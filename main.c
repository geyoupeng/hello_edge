#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "wm_ll_gpio.h"
#define LOG_TAG "main"
#include "wm_log.h"

void my_callback(void *arg)
{
    
    wm_log_info("my_callback enter interrupt");
    printf("debug mes:  \r\n");

}

static void test_task(void *parameters)
{
	unsigned char value = 0;
	
	wm_ll_gpio_init_t GPIO_InitStruct1;
	GPIO_InitStruct1.Pin = WM_LL_GPIO_PIN_4;
	GPIO_InitStruct1.Dir = WM_LL_GPIO_DIR_OUTPUT;
	GPIO_InitStruct1.Pull = WM_LL_GPIO_PULL_UP;
	GPIO_InitStruct1.Af = WM_LL_GPIO_AF_NO;
    wm_ll_gpio_init(GPIOA, &GPIO_InitStruct1);
	
	wm_ll_gpio_init_t GPIO_InitStruct2;
	GPIO_InitStruct2.Pin = WM_LL_GPIO_PIN_7;
	GPIO_InitStruct2.Dir = WM_LL_GPIO_DIR_INPUT;
	GPIO_InitStruct2.Pull = WM_LL_GPIO_PULL_DOWN;
	GPIO_InitStruct2.Af = WM_LL_GPIO_AF_NO;
    wm_ll_gpio_init(GPIOA, &GPIO_InitStruct2);
	
	wm_ll_gpio_write(GPIOA,WM_LL_GPIO_PIN_4, value);
    
    wm_ll_gpio_isr_register(GPIOA, WM_LL_GPIO_PIN_7, my_callback, NULL);
    wm_ll_gpio_irq_enable(GPIOA, WM_LL_GPIO_PIN_7, 
                          WM_GPIO_IRQ_TRIG_FALLING_EDGE);                    
    wm_ll_gpio_irq_disable(GPIOA, WM_LL_GPIO_PIN_7);
    while (1)
    {
		if(wm_ll_gpio_read(GPIOA,WM_LL_GPIO_PIN_4))
			wm_log_info("Pin 4 is hign");
		else
			wm_log_info("Pin 4 is low");
		
		if(wm_ll_gpio_read(GPIOA,WM_LL_GPIO_PIN_7))
			wm_log_info("Pin 7 is hign");
		else
			wm_log_info("Pin 7 is low");
		wm_ll_gpio_toggle(GPIOA,WM_LL_GPIO_PIN_4);
        vTaskDelay(1000);
    }

    vTaskDelete(NULL);
}

int main(void)
{
    xTaskCreate(test_task, "test", 512, NULL, 5, NULL);

    return 0;
}


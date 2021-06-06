Return-Path: <clang-built-linux+bncBC447XVYUEMRBO7Q6GCQMGQEKH6Q7HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFEC39CDDF
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 09:24:43 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id v2-20020a7bcb420000b0290146b609814dsf3078006wmj.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Jun 2021 00:24:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622964283; cv=pass;
        d=google.com; s=arc-20160816;
        b=oX7FWvRyxvIRlrqaBFH12q9xY3B8yAJuMYBqysEynW+WOvwx5Pv+cWQieKMWRWdWK2
         iDdvCmoj6yoKoZ69gp0E81TdfX5ajer+DmvpelTItL2GGo1U/m2Tz9qWupGrd/jUIoGB
         bi8DBELbsnYTrer/ENVCQo5UbEEBp6j0IM8qBa05PMrvuaG03ntbymlcWbzE61rLtqky
         gzPHgVAdOPQ+VDehQvDOxhPFsuJPSgwXdKNZZxVe9fekt+/2wtMKQqBBLSHaYs/Fu/wJ
         IYZZL1m9KEWewiQC4vj7C+KUgyw8z1B+/FnvrLDicdhs3VfC3Cuo/3RFLPjmdOrEM/ps
         Z+zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=lcVrHaP159LZfCO//kaNuMUrPtDBLm3Kgg3nG/vyqh4=;
        b=njX2BKWhfU1jVOYSzUUkHKOmHZdo2QW4JjlwP6cKe0hxsiz/OW2yyRwwPHZ1rsG807
         NUrp5/0mkt6vtH7Ypwrwp1O0taX78XrtldQbJfNqhzNHnsi5gOEgAEtiPQYOgnxV2+CM
         dUvY5315PA+2SVWD6TIZ+oxklGQ92pPJMhmyx8mXl7E8h207vaL4quJDV4JeglB7Bwl1
         W/cnQs5+d7Y7r4rrmBT1IDa9ircU6KJ3usqn3Uywd1MUmT0WP4mDNl2IH9McdyMGsDa4
         +3QHd4/2cFqp9Z0op2srmq/ze2B6lgReJn2JuUNZauz3Qq5oQBky3ncL1RfxKyCOrLZy
         MVmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.70.183.198 is neither permitted nor denied by best guess record for domain of alex@ghiti.fr) smtp.mailfrom=alex@ghiti.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lcVrHaP159LZfCO//kaNuMUrPtDBLm3Kgg3nG/vyqh4=;
        b=rN/5phptq9e64THa6tmOYX+3uTu0kkImTBHA4w2lmEbLOzHc0e2CjVyQyvlZWeEOLy
         plFVke9pRhCrCszm5eo/prChI3wtQ7vi5l8GJ/TZ9oAwjUg3TEWokcZNz3Le6ANvyNq7
         /ZC5uLNWTcR3doLqpmEj2Z57qgTfhf0h7NLGPVKllxUxzRRu4Vl3x3bl+KHrn07c6Xo+
         CrZXrc3UCMw+V5Eh1uxw5ouZ5QoqlCSdTGM4HbyhhFvq3lHAcs0BhsPfOVSPeR6sGrvC
         tQTQDkLeoFtndc4L2NV0AH0TkBw5s7Y4I1GeDuXqokYpn7Jmaj4pMmDYtoP+b9kTBu49
         1NqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lcVrHaP159LZfCO//kaNuMUrPtDBLm3Kgg3nG/vyqh4=;
        b=pXqMPNAwh36ZkbVXieG37bWeDl8cnnXHMrpClik20PYQjhSqOil4Evv18kPEhqV53k
         SCWCf6oe+YBwuhNPYNTQsXIawidwJx9uNCOsQUt5MxnS6FO+3j4MTM2kVCSOFHTh9+5J
         3MLzrUSBuJlWtOt4rF3U0BYqMPOzWvj1XOhbqxNP9+YqLHG/fV7B05eiKnB6/xpD/0Ze
         MJt1BOZd+QCtCZZiKBs+uDOHUoaf/DffMMTjx7Gnf0MD7q5qHJAY1hE/RW3ybNV9YPFj
         o8Q2H199vtDvsKwy2vYjG6sF1lG9D6TKZaBx/afwNdPBGfvgEePQHsRlssXA8MoTw9/R
         379A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Ks0pdEk2ZtkgKjDzpWBCMXa1LzYizaibSWtPeN4SlYfw+iBFQ
	d+ce8zWYMehcXUb8PxwiJOc=
X-Google-Smtp-Source: ABdhPJw49PzSBuqaEn06WmQVok+HeTvrQ71kcWcDbMggei3VU2cjNPnDXGjp6ys+v4SdntDw6KxOQg==
X-Received: by 2002:a7b:c417:: with SMTP id k23mr11008632wmi.71.1622964283486;
        Sun, 06 Jun 2021 00:24:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1d0e:: with SMTP id l14ls658727wms.1.canary-gmail;
 Sun, 06 Jun 2021 00:24:42 -0700 (PDT)
X-Received: by 2002:a1c:2985:: with SMTP id p127mr11349275wmp.165.1622964282571;
        Sun, 06 Jun 2021 00:24:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622964282; cv=none;
        d=google.com; s=arc-20160816;
        b=zzq78XA1WsPDwgv+YHufeQFNZJJOyAs0TTgyg/ZgRObtr9Sfh4/XrMhAH2+9LzKNWG
         FZT68VfA5GRCwlZn3UHgK2WPC5xwzoGuJ0/ZTJ6d5kPj9dmlBjI3hhtZ/NEwacobhN1T
         b9H5sPddrOQ3ZnoFV4aFKFOnblat0aciYpWiQNnh2ymiIWhcyiTKjHRFgyUJ5hx0k/Z6
         6OksLrMFxkmJWKiaFX+JCAV646nhDCVyXZ8/Q+xR6AoVQ89kOPlri/jKbZIzJfdROy5P
         JTHkr8OEiqyUmiKD1yUp1PgUojOwjHkCefJPyrOoOXXw0hrx/8PLWWtmu1iTjPepNbNT
         Y5wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=zAu7t3/v10mGGTm0vFigwtrdxv4H0CLoUZoNAB+sqS0=;
        b=Wj2GAJ8/7VT7Zbo5oBtR6FgzWBd2dk/ym0ySq8ZkNXh/W61PBqdMjr1rJTNlNXoPq6
         /MBB8+O9CFia755lQt1og3pHgtcdx/qntXPdumz9RGq5ZNjpp+5GXNNhYDFIU1OAqkc4
         TUJ0GwspmYUfe0si2/xjAk5huc0TRcWDJSOQZo7xmbkPmwuthe2UOUQpg9/V2+f8fcS4
         u7o7FRxVZISOYYlqcSlZ2+jd4XbClYUCrHfftZBIK+C3peWRtAtiw4TAKMI5WHglGCtA
         bY1HsGqsewb2Ro7NZmbSnlY5MzsUO8iyNU4xLOL1ySD16WwQoZrJYLWx5goHMZU/KMkI
         282w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.70.183.198 is neither permitted nor denied by best guess record for domain of alex@ghiti.fr) smtp.mailfrom=alex@ghiti.fr
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net. [217.70.183.198])
        by gmr-mx.google.com with ESMTPS id r26si431199wra.1.2021.06.06.00.24.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 06 Jun 2021 00:24:42 -0700 (PDT)
Received-SPF: neutral (google.com: 217.70.183.198 is neither permitted nor denied by best guess record for domain of alex@ghiti.fr) client-ip=217.70.183.198;
Received: (Authenticated sender: alex@ghiti.fr)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 2F580C0003;
	Sun,  6 Jun 2021 07:24:02 +0000 (UTC)
Subject: Re: [PATCH] riscv: mm: init: Consolidate vars, functions
To: Jisheng Zhang <jszhang3@mail.ustc.edu.cn>,
 Nathan Chancellor <nathan@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210516211556.43c00055@xhacker>
 <YLaWseLdg5JYElVx@Ryzen-9-3900X.localdomain>
 <20210602231226.0e45524b@xhacker> <20210602235851.001a0d41@xhacker>
 <YLfiADFHMyXst55Y@Ryzen-9-3900X.localdomain>
 <20210603082714.6e524f4c@xhacker> <20210603195418.21fded50@xhacker>
 <20210605010918.7424a0aa@xhacker>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <b90a6bcb-22c4-e500-2586-d54cd881e02e@ghiti.fr>
Date: Sun, 6 Jun 2021 09:23:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210605010918.7424a0aa@xhacker>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: alex@ghiti.fr
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.70.183.198 is neither permitted nor denied by best guess
 record for domain of alex@ghiti.fr) smtp.mailfrom=alex@ghiti.fr
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hi Jisheng,

Le 4/06/2021 =C3=A0 19:09, Jisheng Zhang a =C3=A9crit=C2=A0:
> On Thu, 3 Jun 2021 19:54:18 +0800
> Jisheng Zhang <jszhang3@mail.ustc.edu.cn> wrote:
>=20
>> On Thu, 3 Jun 2021 08:27:14 +0800
>> Jisheng Zhang <jszhang3@mail.ustc.edu.cn> wrote:
>>
>>> On Wed, 2 Jun 2021 12:54:40 -0700
>>> Nathan Chancellor <nathan@kernel.org> wrote:
>>>   =20
>>>> On Wed, Jun 02, 2021 at 11:58:51PM +0800, Jisheng Zhang wrote:
>>>>> On Wed, 2 Jun 2021 23:12:26 +0800
>>>>> Jisheng Zhang <jszhang3@mail.ustc.edu.cn> wrote:
>>>>>       =20
>>>>>> On Tue, 1 Jun 2021 13:21:05 -0700
>>>>>> Nathan Chancellor <nathan@kernel.org> wrote:
>>>>>>       =20
>>>>>>> Hi Jisheng,
>>>>>>
>>>>>> Hi Nathan,
>>>>>>       =20
>>>>>>>
>>>>>>> On Sun, May 16, 2021 at 09:15:56PM +0800, Jisheng Zhang wrote:
>>>>>>>> From: Jisheng Zhang <jszhang@kernel.org>
>>>>>>>>
>>>>>>>> Consolidate the following items in init.c
>>>>>>>>
>>>>>>>> Staticize global vars as much as possible;
>>>>>>>> Add __initdata mark if the global var isn't needed after init
>>>>>>>> Add __init mark if the func isn't needed after init
>>>>>>>> Add __ro_after_init if the global var is read only after init
>>>>>>>>
>>>>>>>> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
>>>>>>>> ---
>>>>>>>>   arch/riscv/include/asm/set_memory.h |  2 +-
>>>>>>>>   arch/riscv/mm/init.c                | 36 +++++++++++++++--------=
------
>>>>>>>>   2 files changed, 20 insertions(+), 18 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/incl=
ude/asm/set_memory.h
>>>>>>>> index 086f757e8ba3..9d4d455726d4 100644
>>>>>>>> --- a/arch/riscv/include/asm/set_memory.h
>>>>>>>> +++ b/arch/riscv/include/asm/set_memory.h
>>>>>>>> @@ -27,7 +27,7 @@ static inline int set_memory_rw_nx(unsigned long=
 addr, int numpages) { return 0;
>>>>>>>>   #endif
>>>>>>>>  =20
>>>>>>>>   #if defined(CONFIG_64BIT) && defined(CONFIG_STRICT_KERNEL_RWX)
>>>>>>>> -void protect_kernel_linear_mapping_text_rodata(void);
>>>>>>>> +void __init protect_kernel_linear_mapping_text_rodata(void);
>>>>>>>>   #else
>>>>>>>>   static inline void protect_kernel_linear_mapping_text_rodata(voi=
d) {}
>>>>>>>>   #endif
>>>>>>>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
>>>>>>>> index 4c4c92ce0bb8..eac2d5c27b3e 100644
>>>>>>>> --- a/arch/riscv/mm/init.c
>>>>>>>> +++ b/arch/riscv/mm/init.c
>>>>>>>> @@ -53,7 +53,7 @@ struct pt_alloc_ops {
>>>>>>>>   #endif
>>>>>>>>   };
>>>>>>>>  =20
>>>>>>>> -static phys_addr_t dma32_phys_limit __ro_after_init;
>>>>>>>> +static phys_addr_t dma32_phys_limit __initdata;
>>>>>>>>  =20
>>>>>>>>   static void __init zone_sizes_init(void)
>>>>>>>>   {
>>>>>>>> @@ -184,7 +184,7 @@ extern char _sdata[], _edata[];
>>>>>>>>   #endif /* CONFIG_XIP_KERNEL */
>>>>>>>>  =20
>>>>>>>>   #ifdef CONFIG_MMU
>>>>>>>> -static struct pt_alloc_ops _pt_ops __ro_after_init;
>>>>>>>> +static struct pt_alloc_ops _pt_ops __initdata;
>>>>>>>>  =20
>>>>>>>>   #ifdef CONFIG_XIP_KERNEL
>>>>>>>>   #define pt_ops (*(struct pt_alloc_ops *)XIP_FIXUP(&_pt_ops))
>>>>>>>> @@ -200,13 +200,13 @@ EXPORT_SYMBOL(va_pa_offset);
>>>>>>>>   #endif
>>>>>>>>   /* Offset between kernel mapping virtual address and kernel load=
 address */
>>>>>>>>   #ifdef CONFIG_64BIT
>>>>>>>> -unsigned long va_kernel_pa_offset;
>>>>>>>> +unsigned long va_kernel_pa_offset __ro_after_init;
>>>>>>>>   EXPORT_SYMBOL(va_kernel_pa_offset);
>>>>>>>>   #endif
>>>>>>>>   #ifdef CONFIG_XIP_KERNEL
>>>>>>>>   #define va_kernel_pa_offset    (*((unsigned long *)XIP_FIXUP(&va=
_kernel_pa_offset)))
>>>>>>>>   #endif
>>>>>>>> -unsigned long va_kernel_xip_pa_offset;
>>>>>>>> +unsigned long va_kernel_xip_pa_offset __ro_after_init;
>>>>>>>>   EXPORT_SYMBOL(va_kernel_xip_pa_offset);
>>>>>>>>   #ifdef CONFIG_XIP_KERNEL
>>>>>>>>   #define va_kernel_xip_pa_offset        (*((unsigned long *)XIP_F=
IXUP(&va_kernel_xip_pa_offset)))
>>>>>>>> @@ -216,7 +216,7 @@ EXPORT_SYMBOL(pfn_base);
>>>>>>>>  =20
>>>>>>>>   pgd_t swapper_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
>>>>>>>>   pgd_t trampoline_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
>>>>>>>> -pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
>>>>>>>> +static pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
>>>>>>>>  =20
>>>>>>>>   pgd_t early_pg_dir[PTRS_PER_PGD] __initdata __aligned(PAGE_SIZE)=
;
>>>>>>>>  =20
>>>>>>>> @@ -253,7 +253,7 @@ static inline pte_t *__init get_pte_virt_fixma=
p(phys_addr_t pa)
>>>>>>>>   	return (pte_t *)set_fixmap_offset(FIX_PTE, pa);
>>>>>>>>   }
>>>>>>>>  =20
>>>>>>>> -static inline pte_t *get_pte_virt_late(phys_addr_t pa)
>>>>>>>> +static inline pte_t *__init get_pte_virt_late(phys_addr_t pa)
>>>>>>>>   {
>>>>>>>>   	return (pte_t *) __va(pa);
>>>>>>>>   }
>>>>>>>> @@ -272,7 +272,7 @@ static inline phys_addr_t __init alloc_pte_fix=
map(uintptr_t va)
>>>>>>>>   	return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
>>>>>>>>   }
>>>>>>>>  =20
>>>>>>>> -static phys_addr_t alloc_pte_late(uintptr_t va)
>>>>>>>> +static phys_addr_t __init alloc_pte_late(uintptr_t va)
>>>>>>>>   {
>>>>>>>>   	unsigned long vaddr;
>>>>>>>>  =20
>>>>>>>> @@ -296,10 +296,10 @@ static void __init create_pte_mapping(pte_t =
*ptep,
>>>>>>>>  =20
>>>>>>>>   #ifndef __PAGETABLE_PMD_FOLDED
>>>>>>>>  =20
>>>>>>>> -pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
>>>>>>>> -pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
>>>>>>>> -pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
>>>>>>>> -pmd_t early_dtb_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE)=
;
>>>>>>>> +static pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
>>>>>>>> +static pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
>>>>>>>> +static pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SI=
ZE);
>>>>>>>> +static pmd_t early_dtb_pmd[PTRS_PER_PMD] __initdata __aligned(PAG=
E_SIZE);
>>>>>>>>  =20
>>>>>>>>   #ifdef CONFIG_XIP_KERNEL
>>>>>>>>   #define trampoline_pmd ((pmd_t *)XIP_FIXUP(trampoline_pmd))
>>>>>>>> @@ -319,7 +319,7 @@ static pmd_t *__init get_pmd_virt_fixmap(phys_=
addr_t pa)
>>>>>>>>   	return (pmd_t *)set_fixmap_offset(FIX_PMD, pa);
>>>>>>>>   }
>>>>>>>>  =20
>>>>>>>> -static pmd_t *get_pmd_virt_late(phys_addr_t pa)
>>>>>>>> +static pmd_t *__init get_pmd_virt_late(phys_addr_t pa)
>>>>>>>>   {
>>>>>>>>   	return (pmd_t *) __va(pa);
>>>>>>>>   }
>>>>>>>> @@ -336,7 +336,7 @@ static phys_addr_t __init alloc_pmd_fixmap(uin=
tptr_t va)
>>>>>>>>   	return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
>>>>>>>>   }
>>>>>>>>  =20
>>>>>>>> -static phys_addr_t alloc_pmd_late(uintptr_t va)
>>>>>>>> +static phys_addr_t __init alloc_pmd_late(uintptr_t va)
>>>>>>>>   {
>>>>>>>>   	unsigned long vaddr;
>>>>>>>>  =20
>>>>>>>> @@ -454,14 +454,16 @@ asmlinkage void __init __copy_data(void)
>>>>>>>>   #error "setup_vm() is called from head.S before relocate so it s=
hould not use absolute addressing."
>>>>>>>>   #endif
>>>>>>>>  =20
>>>>>>>> -uintptr_t load_pa, load_sz;
>>>>>>>> +static uintptr_t load_pa __initdata;
>>>>>>>
>>>>>>> Making load_pa static causing clang built kernels to no longer boot=
,
>>>>>>> hanging after just a few lines of output in the console:
>>>>>>>
>>>>>>> https://github.com/ClangBuiltLinux/continuous-integration2/runs/271=
7606254?check_suite_focus=3Dtrue
>>>>>>>
>>>>>>> I am not sure why that would make a difference nor why GCC is okay =
with
>>>>>>> it. If it is a clang bug, it appears to be there for a while, given=
 that
>>>>>>> it reproduces back to clang-11.
>>>>>>
>>>>>> I can reproduce the issue. Here are my findindings:
>>>>>>
>>>>>> * gcc + binutils can't reproduce it
>>>>>> * clang + llvm-utils + ias can reproduce it
>>>>>> * clang + binutils can reproduce it
>>>>
>>>> Yes, this seems like something strictly related to clang so that is wh=
at
>>>> I have been testing with.
>>>>     =20
>>>>>> All below tests are done with clang + binutils.
>>>>>>
>>>>>> Then I applied below modification:
>>>>>>
>>>>>> -static uintptr_t load_pa __initdata;
>>>>>> +uintptr_t load_pa __initdata;
>>>>>>
>>>>>> I got below panic log:
>>>>>> [    0.015418] Unable to handle kernel paging request at virtual add=
ress fffffffffffffff9
>>>>>> [    0.016432] Oops [#1]
>>>>>> [    0.016679] Modules linked in:
>>>>>> [    0.017103] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.13.0-rc1+=
 #5
>>>>>> [    0.017711] Hardware name: riscv-virtio,qemu (DT)
>>>>>> [    0.018201] epc : trace_hardirqs_on+0x60/0xb2
>>>>>> [    0.018582]  ra : restore_all+0xe/0x66
>>>>>> [    0.018879] epc : ffffffff800cb09a ra : ffffffff800027b8 sp : fff=
fffff80c03dd0
>>>>>> [    0.019376]  gp : ffffffff80d001c8 tp : ffffffff80c0c180 t0 : 000=
0000000000020
>>>>>> [    0.019870]  t1 : ffffffff80006e40 t2 : ffffffff800d2e0a s0 : fff=
fffff80c03e00
>>>>>> [    0.020346]  s1 : 0000000000000001 a0 : 0000000000000001 a1 : 000=
0000000000001
>>>>>> [    0.020800]  a2 : 0000000000000001 a3 : 0000000000000000 a4 : 000=
0000000000000
>>>>>> [    0.021243]  a5 : 0000000000000000 a6 : 0000000000000000 a7 : 000=
0000054494d45
>>>>>> [    0.021717]  s2 : ffffffff800027b8 s3 : ffffffff80d35968 s4 : fff=
fffff8061e1d8
>>>>>> [    0.022179]  s5 : ffffffff80c0c180 s6 : ffffffe000e34b50 s7 : 000=
00000800130f0
>>>>>> [    0.022674]  s8 : 000000000000007f s9 : 0000000080012010 s10: 000=
0000000000000
>>>>>> [    0.023176]  s11: 0000000000000000 t3 : ffffffff80d00108 t4 : fff=
fffff80006e40
>>>>>> [    0.023693]  t5 : ffffffff80006e40 t6 : ffffffff800d2e0a
>>>>>> [    0.024153] status: 0000000000000100 badaddr: fffffffffffffff9 ca=
use: 000000000000000d
>>>>>> [    0.025367] Call Trace:
>>>>>> [    0.025749] [<ffffffff800cb09a>] trace_hardirqs_on+0x60/0xb2
>>>>>> [    0.026402] [<ffffffff800027b8>] restore_all+0xe/0x66
>>>>>> [    0.027261] Unable to handle kernel paging request at virtual add=
ress fffffffffffffffa
>>>>>> [    0.027827] Oops [#2]
>>>>>> [    0.028013] Modules linked in:
>>>>>> [    0.028321] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D      =
     5.13.0-rc1+ #5
>>>>>> [    0.028839] Hardware name: riscv-virtio,qemu (DT)
>>>>>> [    0.029166] epc : trace_hardirqs_on+0x60/0xb2
>>>>>> [    0.029505]  ra : restore_all+0xe/0x66
>>>>>> [    0.029785] epc : ffffffff800cb09a ra : ffffffff800027b8 sp : fff=
fffff80c03a80
>>>>>> [    0.030266]  gp : ffffffff80d001c8 tp : ffffffff80c0c180 t0 : 000=
0000000000020
>>>>>> [    0.030748]  t1 : ffffffff80006e40 t2 : ffffffff800d2e0a s0 : fff=
fffff80c03ab0
>>>>>> [    0.031227]  s1 : 0000000000000001 a0 : 0000000000000002 a1 : 000=
0000000000002
>>>>>> [    0.031717]  a2 : 0000000000000001 a3 : 0000000000000000 a4 : 000=
0000000000000
>>>>>> [    0.032199]  a5 : 0000000000000000 a6 : 0000000000000000 a7 : 000=
0000054494d45
>>>>>> [    0.032680]  s2 : ffffffff800027b8 s3 : ffffffff80d35968 s4 : fff=
fffff8061e1d8
>>>>>> [    0.033160]  s5 : ffffffff80c0c180 s6 : ffffffe000e34b50 s7 : 000=
00000800130f0
>>>>>> [    0.033642]  s8 : 000000000000007f s9 : 0000000080012010 s10: 000=
0000000000000
>>>>>> [    0.034123]  s11: 0000000000000000 t3 : ffffffff80d00108 t4 : fff=
fffff80006e40
>>>>>> [    0.034601]  t5 : ffffffff80006e40 t6 : ffffffff800d2e0a
>>>>>> [    0.034965] status: 0000000000000100 badaddr: fffffffffffffffa ca=
use: 000000000000000d
>>>>>> [    0.035492] Call Trace:
>>>>>> [    0.035682] [<ffffffff800cb09a>] trace_hardirqs_on+0x60/0xb2
>>>>>> [    0.036077] [<ffffffff800027b8>] restore_all+0xe/0x66
>>>>>> [    0.036545] ---[ end trace 7f4fbff09d927668 ]---
>>>>>> [    0.037188] Kernel panic - not syncing: Attempted to kill the idl=
e task!
>>>>>> [    0.038107] ---[ end Kernel panic - not syncing: Attempted to kil=
l the idle task! ]---
>>>>>>
>>>>>> Then I checked 5.13-rc1, above panic log can be reproduced too. So t=
he issue
>>>>>> should exist there for a while. I never tried clang with riscv, did =
you remember
>>>>>> which last commit or version clang works, I may try to bisect.
>>>> V> >
>>>>>
>>>>> More findings:
>>>>>
>>>>> *The above panic issue can also be seen from 5.12-rc2. If disable FTR=
ACE, then
>>>>> the panic disappears, kernel can boot
>>>>>
>>>>> *so I retested riscv next tree w/ FTRACE disabled, kernel can boot w/=
 below
>>>>> modification:
>>>>
>>>> Yeah, I do not enable CONFIG_FTRACE because it is not enabled in
>>>> ARCH=3Driscv defconfig by default.
>>>>     =20
>>>>> -static uintptr_t load_pa __initdata;
>>>>> +uintptr_t load_pa __initdata;
>>>>>
>>>>> This is a weird issue. Any clue is appreciated.
>>>>
>>>> Unfortunately, this is outside of my realm of expertise, as I am
>>>> unfamiliar with RISC-V at this level. Maybe Palmer has some ideas. I
>>>> would think that changing this variable to static would be fine given
>>>> that the symbol is only used in this translation unit but clearly not.=
 I
>>>> have attempted to debug this in gdb but that does not really get me
>>>> anywhere: I cannot break on start_kernel() for whatever reason and the
>>>> kernel never gets to my breakpoint in setup_vm().
>>>>
>>>> I did decide to through a BUG() around arch/riscv/mm/init.c to see
>>>> exactly which statement causes everything to hang. I landed on:
>>>>
>>>> csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE)=
;
>>>>
>>>> in setup_vm_final(). No idea how that is relevant to this.
>>>>
>>>> Some people in the ClangBuiltLinux bi-weekly meeting today pointed out
>>>> that since load_pa is assigned to the linker defined symbol _start,
>>>> there could be some optimization that goes awry here. I have keyed tha=
t
>>>
>>> Thanks for the inspiration. Below patch fixes the hang issue, but I did=
n't
>>> go through all necessary WRITE_ONCE convertions.
>>>
>>> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
>>> index ae32f78207f0..fa9336a2583f 100644
>>> --- a/arch/riscv/mm/init.c
>>> +++ b/arch/riscv/mm/init.c
>>> @@ -504,7 +504,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
>>>  =20
>>>          va_kernel_xip_pa_offset =3D kernel_virt_addr - xiprom;
>>>   #else
>>> -       load_pa =3D (uintptr_t)(&_start);
>>> +       WRITE_ONCE(load_pa, (uintptr_t)(&_start));
>>>          load_sz =3D (uintptr_t)(&_end) - load_pa;
>>>   #endif
>>>   =20
>>
>> I think I found the root cause, but I dunno whether this is clang bug or
>> we need WRITE_ONCE patch.
>> W/O WRITE_ONCE, the setup_vm() is compiled to
>>
>> ffffffff8040472a <setup_vm>:
>> ffffffff8040472a:       1101                    addi    sp,sp,-32
>> ffffffff8040472c:       ec06                    sd      ra,24(sp)
>> ffffffff8040472e:       e822                    sd      s0,16(sp)
>> ffffffff80404730:       e426                    sd      s1,8(sp)
>> ffffffff80404732:       e04a                    sd      s2,0(sp)
>> ffffffff80404734:       1000                    addi    s0,sp,32
>> ffffffff80404736:       892a                    mv      s2,a0
>> ffffffff80404738:       001fd517                auipc   a0,0x1fd
>> ffffffff8040473c:       8c850513                addi    a0,a0,-1848 # ff=
ffffff80601000 <load_pa>
>> ffffffff80404740:       4585                    li      a1,1
>> ffffffff80404742:       00b50023                sb      a1,0(a0)     // =
BUG!
>> ffffffff80404746:       001fd517                auipc   a0,0x1fd
>> ffffffff8040474a:       8c250513                addi    a0,a0,-1854 # ff=
ffffff80601008 <load_sz>
>> ffffffff8040474e:       00b50023                sb      a1,0(a0)     // =
BUG!
>> ffffffff80404752:       ffbfc517                auipc   a0,0xffbfc
>> ffffffff80404756:       8ae50513                addi    a0,a0,-1874 # ff=
ffffff80000000 <_start>
>> ffffffff8040475a:       55fd                    li      a1,-1
>> ffffffff8040475c:       02559613                slli    a2,a1,0x25
>> ffffffff80404760:       83018593                addi    a1,gp,-2000 # ff=
ffffff80ca6428 <kernel_virt_addr>
>> ffffffff80404764:       618c                    ld      a1,0(a1)
>> ffffffff80404766:       8e09                    sub     a2,a2,a0
>> ...
>>
>> It seems load_pa and load_sz are stored with 1, this is obviously not wh=
at the
>> code expected.
>>
>>
>> W/ WRITE_ONCE, the setup_vm() is compiled to:
>>
>> ffffffff8040472a <setup_vm>:
>> ffffffff8040472a:       1101                    addi    sp,sp,-32
>> ffffffff8040472c:       ec06                    sd      ra,24(sp)
>> ffffffff8040472e:       e822                    sd      s0,16(sp)
>> ffffffff80404730:       e426                    sd      s1,8(sp)
>> ffffffff80404732:       e04a                    sd      s2,0(sp)
>> ffffffff80404734:       1000                    addi    s0,sp,32
>> ffffffff80404736:       892a                    mv      s2,a0
>> ffffffff80404738:       001fd597                auipc   a1,0x1fd
>> ffffffff8040473c:       8c858593                addi    a1,a1,-1848 # ff=
ffffff80601000 <load_pa>
>> ffffffff80404740:       ffbfc517                auipc   a0,0xffbfc
>> ffffffff80404744:       8c050513                addi    a0,a0,-1856 # ff=
ffffff80000000 <_start>
>> ffffffff80404748:       e188                    sd      a0,0(a1)
>> ffffffff8040474a:       001fd597                auipc   a1,0x1fd
>> ffffffff8040474e:       8be58593                addi    a1,a1,-1858 # ff=
ffffff80601008 <load_sz>
>> ffffffff80404752:       4605                    li      a2,1
>> ffffffff80404754:       00c58023                sb      a2,0(a1)
>> ffffffff80404758:       55fd                    li      a1,-1
>> ffffffff8040475a:       02559613                slli    a2,a1,0x25
>> ffffffff8040475e:       83018593                addi    a1,gp,-2000 # ff=
ffffff80ca6428 <kernel_virt_addr>
>> ffffffff80404762:       618c                    ld      a1,0(a1)
>> ffffffff80404764G       8e09                    sub     a2,a2,a0
>> ...
>>
>> This is what the code expected.
>=20
> This issue can also be solved by avoiding global vars: load_pa and load_s=
z.
>=20
> Hi Alexandre,
>=20
> IMHO, the load_pa and load_sz can be removed, I have one patch to remove
> them, it works. I'm not sure whether will the two vars be used in your
> future patches?
>=20

More or less, I want to move all the address conversion macros to inline=20
functions as suggested by Christoph, and there I will need load_sz and=20
load_pa. But I'm not sure it is really necessary.

Anyway, that would "solve" this issue, but I think we all agree the real=20
problem should be solved at clang level.


> Thanks in advance,
> Jisheng
>=20
>=20
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b90a6bcb-22c4-e500-2586-d54cd881e02e%40ghiti.fr.

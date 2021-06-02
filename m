Return-Path: <clang-built-linux+bncBDYNZRF55MFBBW5T3WCQMGQE2BP2XVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 1384939860E
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 12:13:49 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id w1-20020a0568304101b02902fc17224cf5sf1349876ott.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 03:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X8WKb+gEKREs7zN0jUvv4BAK/JqlAZ4glUiIge4qD0U=;
        b=iiSVZzgKy/09wmeJiqCISVWBSiu0EauPdLAyPFvVqXNqo91Z+OSpsHxSNNTJibi6F+
         zoEfrzhYH6hufOc+pWk7InR0ULVxQoGlIiul6O9Ep4vIy6mDjCeNRMzmtP5WkNB3oP78
         aRTDvogtjTPOrRAbKxjQu48EDfArzAycaeqmNqKzulPQ0cGeSeM46Mi5oDgeowS0K3+X
         XI+S1XtVEbdT0DBf9+5TEqMEprqJHgl7Egz6kJj9iaoem2YoDWbNOyuZlhUg7WZqEKvK
         VtK4+0h/CtbbFIhYZO+ea8OCMJxXsJSZxuffms//PNii2qmUeI/xSb6CaSV9jx98dnK2
         2iLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8WKb+gEKREs7zN0jUvv4BAK/JqlAZ4glUiIge4qD0U=;
        b=qFczmL+wU3NAGYFXCh6lZAT0nYUMeNlMbEA5H/4l8WfMCHBh49TMk6MtB3KDvRVA5q
         YUn6idbjV01PBCZtkOOw2Za4tZ5liQsZ/6jNehCeP7BdTpbjf+bpuVbcQ6ogUUpgH4ps
         48u9cfw7uBaoe7KZbwM5vpwiWiRXbOAiZsV+gumws7InfGTudUz3wLIsVJzElggMX4lT
         ktq/9mWfCVqnGAJQUScOT3hWICq+MSDMXQW8/MHcZIFRtMSac6yJJXk4ojmUTcukgevN
         o3hRmAmw7dpHdQ3F+qUXn5Ps1aaZMycN4x0O46M3k3wpMfs5wV5igXoLFPBtLlR0OvMm
         MlQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8WKb+gEKREs7zN0jUvv4BAK/JqlAZ4glUiIge4qD0U=;
        b=hO0LZEj89PRuW6vACz2bZ/HDcg14laArgTr7VzbuiGdPYw/KEs0j0xBiv13aBn6TUH
         Lpb1FX9rjRxcoRizvzwDmb7EOXKD/pmyNtF8iQT5/L5ZScQFLoB0ZnsY0wrsPRv4JxGx
         A1GCDsO7EadV1JaAULkBosmIGVK8xNONUUC0ZNFKvMKfAmkxh1x5fuZzuEfDj99TuRuj
         vPFxIfcWmSsAGkGpMPcVIOVHhauHGuna7SLWo/OPCjAXb8hD7yR/ySWw6KAHG+6v/xj0
         cI8kXtwNZQeLD/TkvLBkS8D6r7zYSy/Fz0ThyBVuRlKh0Z9i90s7B9U5t7dwEtuF7avs
         wozA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KyET/vk4k1P9ax77im1jMiAQMOxhtR7b1gZLHxM6homZb1/u/
	c8UvyD8mwvQC0i+Otym3IBQ=
X-Google-Smtp-Source: ABdhPJwwZ9kZV6MAxK0IVg2a5zhV/P3zPQJud+kTPXE3k77lIIcXw6NBLSmtFfrKykXv8Z8BA8TXqA==
X-Received: by 2002:a05:6830:2243:: with SMTP id t3mr24574997otd.142.1622628827816;
        Wed, 02 Jun 2021 03:13:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:230b:: with SMTP id e11ls1550910oie.11.gmail; Wed, 02
 Jun 2021 03:13:47 -0700 (PDT)
X-Received: by 2002:a05:6808:d48:: with SMTP id w8mr20337256oik.141.1622628827033;
        Wed, 02 Jun 2021 03:13:47 -0700 (PDT)
Date: Wed, 2 Jun 2021 03:13:46 -0700 (PDT)
From: Mathieu Acher <mathieu.acher@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <26f81a61-e2eb-47e9-b6e0-3989582bb955n@googlegroups.com>
Subject: Building an existing .config (provided for gcc) with clang?
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4136_1662792554.1622628826331"
X-Original-Sender: mathieu.acher@gmail.com
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

------=_Part_4136_1662792554.1622628826331
Content-Type: multipart/alternative; 
	boundary="----=_Part_4137_1999550196.1622628826331"

------=_Part_4137_1999550196.1622628826331
Content-Type: text/plain; charset="UTF-8"

Hi, 

tldr; some "fixes" seem needed to build an arbitrary .config with gcc *and* 
clang

I'm investigating a build scenario where I already have a .config typically 
generated with randconfig and originally set up for building with gcc... 
And I want to use clang instead to build it.                                
                                                     
My experience so far is that the --syncconfig Kconfig asks me to fix some 
options' values
first, to choose between INIT_STACK_NONE and INIT_STACK_ALL... and then to 
choose KCSAN: dynamic data race detector (KCSAN)  or not...          

Two examples below, on Linux kernel 5.8. 

First, with tinyconfig

make CC=gcc tinyconfig 
gcc --version
gcc (Debian 10.2.1-6) 10.2.1 20210110

make CC=clang-11
scripts/kconfig/conf  --syncconfig Kconfig
*
* Restart config...
*
*
* Memory initialization
*
Initialize kernel stack variables at function entry
> 1. no automatic initialization (weakest) (INIT_STACK_NONE)
  2. 0xAA-init everything on the stack (strongest) (INIT_STACK_ALL) (NEW)
choice[1-2?]: 2
Enable heap memory zeroing on allocation by default 
(INIT_ON_ALLOC_DEFAULT_ON) [N/y/?] n
Enable heap memory zeroing on free by default (INIT_ON_FREE_DEFAULT_ON) 
[N/y/?] n

and then the build proceeds...

Maybe it's my setup/build environment, but I got errors:
CC      arch/x86/events/amd/core.o
In file included from arch/x86/events/amd/core.c:12:
arch/x86/events/amd/../perf_event.h:854:21: error: invalid output size for 
constraint '=q'
        u64 disable_mask = 
__this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
                           ^
./include/linux/percpu-defs.h:446:2: note: expanded from macro 
'__this_cpu_read'
        raw_cpu_read(pcp);                                              \
        ^
./include/linux/percpu-defs.h:420:28: note: expanded from macro 
'raw_cpu_read'
#define raw_cpu_read(pcp)              
 __pcpu_size_call_return(raw_cpu_read_, pcp)
                                        ^
./include/linux/percpu-defs.h:321:23: note: expanded from macro 
'__pcpu_size_call_return'
        case 1: pscr_ret__ = stem##1(variable); break;                  \
                             ^
<scratch space>:169:1: note: expanded from here
raw_cpu_read_1
^
./arch/x86/include/asm/percpu.h:394:30: note: expanded from macro 
'raw_cpu_read_1'
#define raw_cpu_read_1(pcp)             percpu_from_op(, "mov", pcp)
                                        ^
./arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 
'percpu_from_op'
                    : "=q" (pfo_ret__)                  \
                            ^
In file included from arch/x86/events/amd/core.c:12:
arch/x86/events/amd/../perf_event.h:854:21: error: invalid output size for 
constraint '=q'
./include/linux/percpu-defs.h:446:2: note: expanded from macro 
'__this_cpu_read'
        raw_cpu_read(pcp);                                              \
        ^
./include/linux/percpu-defs.h:420:28: note: expanded from macro 
'raw_cpu_read'
#define raw_cpu_read(pcp)              
 __pcpu_size_call_return(raw_cpu_read_, pcp)
                                        ^
./include/linux/percpu-defs.h:322:23: note: expanded from macro 
'__pcpu_size_call_return'
        case 2: pscr_ret__ = stem##2(variable); break;                  \
                             ^
<scratch space>:174:1: note: expanded from here
raw_cpu_read_2
^
./arch/x86/include/asm/percpu.h:395:30: note: expanded from macro 
'raw_cpu_read_2'
#define raw_cpu_read_2(pcp)             percpu_from_op(, "mov", pcp)
                                        ^
./arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 
'percpu_from_op'
                    : "=q" (pfo_ret__)                  \
                            ^
In file included from arch/x86/events/amd/core.c:12:
arch/x86/events/amd/../perf_event.h:854:21: error: invalid output size for 
constraint '=q'
./include/linux/percpu-defs.h:446:2: note: expanded from macro 
'__this_cpu_read'
        raw_cpu_read(pcp);                                              \
        ^
./include/linux/percpu-defs.h:420:28: note: expanded from macro 
'raw_cpu_read'
#define raw_cpu_read(pcp)              
 __pcpu_size_call_return(raw_cpu_read_, pcp)
                                        ^
./include/linux/percpu-defs.h:323:23: note: expanded from macro 
'__pcpu_size_call_return'
        case 4: pscr_ret__ = stem##4(variable); break;                  \
                             ^
<scratch space>:179:1: note: expanded from here
raw_cpu_read_4
^
./arch/x86/include/asm/percpu.h:396:30: note: expanded from macro 
'raw_cpu_read_4'
#define raw_cpu_read_4(pcp)             percpu_from_op(, "mov", pcp)
                                        ^
./arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 
'percpu_from_op'
                    : "=q" (pfo_ret__)                  \
                            ^
3 errors generated.
make[3]: *** [scripts/Makefile.build:281: arch/x86/events/amd/core.o] Error 
1
make[2]: *** [scripts/Makefile.build:497: arch/x86/events/amd] Error 2
make[1]: *** [scripts/Makefile.build:497: arch/x86/events] Error 2
make: *** [Makefile:1756: arch/x86] Error 2

The difference between the .config (.config with gcc vs manual "fix" of 
.config with clang) is as follows:
scripts/diffconfig .config .config.old 
-CC_HAS_ASM_GOTO_OUTPUT y
-CC_HAS_AUTO_VAR_INIT y
-CC_HAS_KASAN_SW_TAGS y
-CC_IS_CLANG y
-HAVE_KCSAN_COMPILER y
-INIT_STACK_ALL y
 CC_VERSION_TEXT "Debian clang version 11.0.1-2" -> "gcc (Debian 10.2.1-6) 
10.2.1 20210110"
 CLANG_VERSION 110001 -> 0
 GCC_VERSION 0 -> 100201
 INIT_STACK_NONE n -> y
 KASAN_STACK 0 -> 1
+CC_IS_GCC y


Interestingly, I've then tried:
make CC=gcc tinyconfig
make CC=clang-11 tinyconfig
scripts/diffconfig .config .config.old
-X86_PAE n
+ARCH_ENABLE_MEMORY_HOTPLUG y
+CRASH_DUMP n
+DEBUG_HIGHMEM n
+FRAME_POINTER y
+HARDENED_USERCOPY n
+HAVE_ALIGNED_STRUCT_PAGE y
+HAVE_HARDENED_USERCOPY_ALLOCATOR y
+HIGHMEM y
+HIGHPTE n
+SLAB_FREELIST_HARDENED n
+SLAB_FREELIST_RANDOM n
make

and it builds nicely! 
It should be noted that the "diff" between .config is different. 

==

Second example, with a random configuration... 
(I can upload the .config if needs be) 

make randconfig # with gcc 
make CC=clang-11 # build was OK this time, manual fix seems effective 
scripts/diffconfig .config .config.old
-CC_HAS_ASM_GOTO_OUTPUT y
-CC_HAS_AUTO_VAR_INIT y
-CC_HAS_KASAN_SW_TAGS y
-CC_IS_CLANG y
-HAVE_KCSAN_COMPILER y
-INIT_STACK_ALL y
-KCSAN n
 CC_VERSION_TEXT "Debian clang version 11.0.1-2" -> "gcc (Debian 10.2.1-6) 
10.2.1 20210110"
 CLANG_VERSION 110001 -> 0
 GCC_VERSION 0 -> 100201
 INIT_STACK_NONE n -> y
 KASAN_STACK 0 -> 1
 LD_VERSION 235020000 -> 235010000
+CC_IS_GCC y
      
===

So my questions...

Can we envision to have a generic procedure that would "fix" a .config (gcc 
oriented) in such a way clang can be used?                                  
                       
if it's "just" taking a .config and fixing INIT_STACK and KCSAN, I'm fine 
:)          

It seems that some options are supported only by clang (and vice versa)... 
It could be useful for the fixing procedure...    
is it possible to list all such options? 
        
More generally, do you have some experiences of building an arbitrary 
.config with gcc and then clang? 

The goal is to investigate how clang may differ from gcc given a 
configuration (partly discussed at Plumbers 
https://youtu.be/FFjV9f_Ub9o?t=10761) 

Thanks for your help! 

Mathieu Acher

Associate Professor
Univ Rennes, Inria, CNRS, IRISA, France (DiverSE team)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/26f81a61-e2eb-47e9-b6e0-3989582bb955n%40googlegroups.com.

------=_Part_4137_1999550196.1622628826331
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,&nbsp;</div><div><br></div><div>tldr; some "fixes" seem needed to b=
uild an arbitrary .config with gcc *and* clang</div><div><br></div><div>I'm=
 investigating a build scenario where I already have a .config typically ge=
nerated with randconfig and originally set up for building with gcc...&nbsp=
;</div><div>And I want to use clang instead to build it.&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div><div>My exper=
ience so far is that the --syncconfig Kconfig asks me to fix some options' =
values</div><div>first, to choose between INIT_STACK_NONE and INIT_STACK_AL=
L... and then to choose KCSAN: dynamic data race detector (KCSAN)&nbsp; or =
not...&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div><div><br></div><div>Two=
 examples below, on Linux kernel 5.8.&nbsp;</div><div><br></div><div>First,=
 with tinyconfig</div><div><br></div><div>make CC=3Dgcc tinyconfig&nbsp;<br=
></div><div><div>gcc --version</div><div>gcc (Debian 10.2.1-6) 10.2.1 20210=
110</div></div><div><br></div><div>make CC=3Dclang-11<br></div><div>scripts=
/kconfig/conf&nbsp; --syncconfig Kconfig<br></div><div><div>*</div><div>* R=
estart config...</div><div>*</div><div>*</div><div>* Memory initialization<=
/div><div>*</div><div>Initialize kernel stack variables at function entry</=
div><div>&gt; 1. no automatic initialization (weakest) (INIT_STACK_NONE)</d=
iv><div>&nbsp; 2. 0xAA-init everything on the stack (strongest) (INIT_STACK=
_ALL) (NEW)</div><div>choice[1-2?]: 2</div><div>Enable heap memory zeroing =
on allocation by default (INIT_ON_ALLOC_DEFAULT_ON) [N/y/?] n</div><div>Ena=
ble heap memory zeroing on free by default (INIT_ON_FREE_DEFAULT_ON) [N/y/?=
] n</div></div><div><br></div><div>and then the build proceeds...</div><div=
><br></div><div>Maybe it's my setup/build environment, but I got errors:</d=
iv><div><div>CC&nbsp; &nbsp; &nbsp; arch/x86/events/amd/core.o</div></div><=
div>In file included from arch/x86/events/amd/core.c:12:<br></div><div><div=
>arch/x86/events/amd/../perf_event.h:854:21: error: invalid output size for=
 constraint '=3Dq'</div><div>&nbsp; &nbsp; &nbsp; &nbsp; u64 disable_mask =
=3D __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);</div><div>&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;^</div><div>./include/linux/percpu-defs.h:446:2: note: expanded=
 from macro '__this_cpu_read'</div><div>&nbsp; &nbsp; &nbsp; &nbsp; raw_cpu=
_read(pcp);&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>.=
/include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_rea=
d'</div><div>#define raw_cpu_read(pcp)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;__pcpu_size_call_return(raw_cpu_read_, pcp)</div><div>&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>.=
/include/linux/percpu-defs.h:321:23: note: expanded from macro '__pcpu_size=
_call_return'</div><div>&nbsp; &nbsp; &nbsp; &nbsp; case 1: pscr_ret__ =3D =
stem##1(variable); break;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^</div><div>&lt;scrat=
ch space&gt;:169:1: note: expanded from here</div><div>raw_cpu_read_1</div>=
<div>^</div><div>./arch/x86/include/asm/percpu.h:394:30: note: expanded fro=
m macro 'raw_cpu_read_1'</div><div>#define raw_cpu_read_1(pcp)&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;percpu_from_op(, "mov", pcp)</div><div>&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div><div=
>./arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_=
from_op'</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; : "=3Dq" (pfo_ret__)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>In fil=
e included from arch/x86/events/amd/core.c:12:</div><div>arch/x86/events/am=
d/../perf_event.h:854:21: error: invalid output size for constraint '=3Dq'<=
/div><div>./include/linux/percpu-defs.h:446:2: note: expanded from macro '_=
_this_cpu_read'</div><div>&nbsp; &nbsp; &nbsp; &nbsp; raw_cpu_read(pcp);&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>./include/linux=
/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'</div><div>#=
define raw_cpu_read(pcp)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;__pcpu_size_call_return(raw_cpu_read_, pcp)</div><div>&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>./include/linux=
/percpu-defs.h:322:23: note: expanded from macro '__pcpu_size_call_return'<=
/div><div>&nbsp; &nbsp; &nbsp; &nbsp; case 2: pscr_ret__ =3D stem##2(variab=
le); break;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \=
</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^</div><div>&lt;scratch space&gt;:1=
74:1: note: expanded from here</div><div>raw_cpu_read_2</div><div>^</div><d=
iv>./arch/x86/include/asm/percpu.h:395:30: note: expanded from macro 'raw_c=
pu_read_2'</div><div>#define raw_cpu_read_2(pcp)&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;percpu_from_op(, "mov", pcp)</div><div>&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>./arch/x86/in=
clude/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'</div>=
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
: "=3Dq" (pfo_ret__)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>In file included fro=
m arch/x86/events/amd/core.c:12:</div><div>arch/x86/events/amd/../perf_even=
t.h:854:21: error: invalid output size for constraint '=3Dq'</div><div>./in=
clude/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read=
'</div><div>&nbsp; &nbsp; &nbsp; &nbsp; raw_cpu_read(pcp);&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \</div=
><div>&nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>./include/linux/percpu-defs.h=
:420:28: note: expanded from macro 'raw_cpu_read'</div><div>#define raw_cpu=
_read(pcp)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;__pcpu_siz=
e_call_return(raw_cpu_read_, pcp)</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>./include/linux/percpu-defs.h=
:323:23: note: expanded from macro '__pcpu_size_call_return'</div><div>&nbs=
p; &nbsp; &nbsp; &nbsp; case 4: pscr_ret__ =3D stem##4(variable); break;&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \</div><div>&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;^</div><div>&lt;scratch space&gt;:179:1: note: ex=
panded from here</div><div>raw_cpu_read_4</div><div>^</div><div>./arch/x86/=
include/asm/percpu.h:396:30: note: expanded from macro 'raw_cpu_read_4'</di=
v><div>#define raw_cpu_read_4(pcp)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;percpu_from_op(, "mov", pcp)</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>./arch/x86/include/asm/perc=
pu.h:189:15: note: expanded from macro 'percpu_from_op'</div><div>&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : "=3Dq" (pfo_=
ret__)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \</div=
><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>3 errors generated.</div><div>make=
[3]: *** [scripts/Makefile.build:281: arch/x86/events/amd/core.o] Error 1</=
div><div>make[2]: *** [scripts/Makefile.build:497: arch/x86/events/amd] Err=
or 2</div><div>make[1]: *** [scripts/Makefile.build:497: arch/x86/events] E=
rror 2</div><div>make: *** [Makefile:1756: arch/x86] Error 2</div></div><di=
v><br></div><div>The difference between the .config (.config with gcc vs ma=
nual "fix" of .config with clang) is as follows:</div><div><div>scripts/dif=
fconfig .config .config.old&nbsp;</div><div>-CC_HAS_ASM_GOTO_OUTPUT y</div>=
<div>-CC_HAS_AUTO_VAR_INIT y</div><div>-CC_HAS_KASAN_SW_TAGS y</div><div>-C=
C_IS_CLANG y</div><div>-HAVE_KCSAN_COMPILER y</div><div>-INIT_STACK_ALL y</=
div><div>&nbsp;CC_VERSION_TEXT "Debian clang version 11.0.1-2" -&gt; "gcc (=
Debian 10.2.1-6) 10.2.1 20210110"</div><div>&nbsp;CLANG_VERSION 110001 -&gt=
; 0</div><div>&nbsp;GCC_VERSION 0 -&gt; 100201</div><div>&nbsp;INIT_STACK_N=
ONE n -&gt; y</div><div>&nbsp;KASAN_STACK 0 -&gt; 1</div><div>+CC_IS_GCC y<=
/div></div><div><br></div><div><br></div><div>Interestingly, I've then trie=
d:</div><div>make CC=3Dgcc tinyconfig<br></div><div><div>make CC=3Dclang-11=
 tinyconfig<br></div><div>scripts/diffconfig .config .config.old</div><div>=
-X86_PAE n</div><div>+ARCH_ENABLE_MEMORY_HOTPLUG y</div><div>+CRASH_DUMP n<=
/div><div>+DEBUG_HIGHMEM n</div><div>+FRAME_POINTER y</div><div>+HARDENED_U=
SERCOPY n</div><div>+HAVE_ALIGNED_STRUCT_PAGE y</div><div>+HAVE_HARDENED_US=
ERCOPY_ALLOCATOR y</div><div>+HIGHMEM y</div><div>+HIGHPTE n</div><div>+SLA=
B_FREELIST_HARDENED n</div><div>+SLAB_FREELIST_RANDOM n</div></div><div>mak=
e</div><div><br></div><div>and it builds nicely!&nbsp;</div><div>It should =
be noted that the "diff" between .config is different.&nbsp;</div><div><br>=
</div><div>=3D=3D</div><div><br></div><div>Second example, with a random co=
nfiguration...&nbsp;</div><div>(I can upload the .config if needs be)&nbsp;=
</div><div><br></div><div>make randconfig # with gcc&nbsp;</div><div>make C=
C=3Dclang-11 # build was OK this time, manual fix seems effective&nbsp;</di=
v><div>scripts/diffconfig .config .config.old<br></div><div><div>-CC_HAS_AS=
M_GOTO_OUTPUT y</div><div>-CC_HAS_AUTO_VAR_INIT y</div><div>-CC_HAS_KASAN_S=
W_TAGS y</div><div>-CC_IS_CLANG y</div><div>-HAVE_KCSAN_COMPILER y</div><di=
v>-INIT_STACK_ALL y</div><div>-KCSAN n</div><div>&nbsp;CC_VERSION_TEXT "Deb=
ian clang version 11.0.1-2" -&gt; "gcc (Debian 10.2.1-6) 10.2.1 20210110"</=
div><div>&nbsp;CLANG_VERSION 110001 -&gt; 0</div><div>&nbsp;GCC_VERSION 0 -=
&gt; 100201</div><div>&nbsp;INIT_STACK_NONE n -&gt; y</div><div>&nbsp;KASAN=
_STACK 0 -&gt; 1</div><div>&nbsp;LD_VERSION 235020000 -&gt; 235010000</div>=
<div>+CC_IS_GCC y</div></div><div>&nbsp; &nbsp; &nbsp;&nbsp;<br></div><div>=
=3D=3D=3D</div><div><br></div><div>So my questions...</div><div><br></div><=
div>Can we envision to have a generic procedure that would "fix" a .config =
(gcc oriented) in such a way clang can be used?&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;</div><div>if it's "just" taking a .config and fixi=
ng INIT_STACK and KCSAN, I'm fine :)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp=
;</div><div><br></div><div>It seems that some options are supported only by=
 clang (and vice versa)...&nbsp;</div><div>It could be useful for the fixin=
g procedure...&nbsp; &nbsp;&nbsp;<br></div><div>is it possible to list all =
such options?&nbsp;</div><div>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div><div>M=
ore generally, do you have some experiences of building an arbitrary .confi=
g with gcc and then clang?&nbsp;<br></div><div><br></div><div>The goal is t=
o investigate how clang may differ from gcc given a configuration (partly d=
iscussed at Plumbers https://youtu.be/FFjV9f_Ub9o?t=3D10761)&nbsp;</div><di=
v><br></div><div>Thanks for your help!&nbsp;</div><div><br></div><div>Mathi=
eu Acher</div><div><br></div><div><div>Associate Professor</div><div>Univ R=
ennes, Inria, CNRS, IRISA, France (DiverSE team)</div></div><div><br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/26f81a61-e2eb-47e9-b6e0-3989582bb955n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/26f81a61-e2eb-47e9-b6e0-3989582bb955n%40googleg=
roups.com</a>.<br />

------=_Part_4137_1999550196.1622628826331--

------=_Part_4136_1662792554.1622628826331--

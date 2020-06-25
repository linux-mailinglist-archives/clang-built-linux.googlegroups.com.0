Return-Path: <clang-built-linux+bncBDV2D5O34IDRBVED2D3QKGQEHBLDRYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F73A209848
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 03:45:58 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id q5sf2988272qvq.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 18:45:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593049557; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzsw+x2rqi9bWraFeGb/avkK/Syixl7Mwdx8yoAvEzMPg0EyKLPNBdvn0erW8fO0+w
         WIYmEb7ITfX2aXsmDSkNib/bGrQmJGLi83FTx1HTlbtW4TTg47PD9kPPSjhMr7JZY92C
         Hh5szQTTEqk4i7Stz6PWR9QKrGlya32SCS2oXqlMhDGYRrrHo6WAOqlA5qD4at4r0U6/
         tlF52/bGmfxZ0VGAny6eP1wZzkRzE2y4Zd6/937mStWxFDy/3JCtOwpc96oNyAXaAbaa
         C0lv6btY48HvXcTbISsME1dAqktA+fuTau7yXmoRITxWFTTwJHy5+jQPuLlMwNQQcv36
         rLmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=pGe5KMDNTNCxqsyC4qL2pDy3dtoYQZOrQVXjIfF26uM=;
        b=o8vMN4DOON42d75zVFelXAk/NKdCUY8liJzOoCPTEWssprlkmz3IfOUwSUtSDk6DjP
         ik/qseCfSIU7xT+Ycey25eh7VkkWWTeOUiPA5anVHU19oq7gb+QZ2QGqiRXc6H/g4e1g
         jgiwWH93onIpFX2guMfp8maQBDftlfVBQcYkl1qhl18G6UlIQGguCATLoC/p8Wa8cOeH
         B3yB4Gq18BbcTWf22RgKq3tzCGGgknkKbDsWrTCh8Aaf0qpv5v7X9UFnabO0nRVJ814q
         pOM1HHOaTG359WDsGBOZBjOtVsgm4oQFbzBeOVLdwmHe+wD7Yi08YhiCwUhZ8x2TMcF2
         +mjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=cXl7H9JB;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pGe5KMDNTNCxqsyC4qL2pDy3dtoYQZOrQVXjIfF26uM=;
        b=U+iCDMDWBbrGyAfTACxaVoIlZZv/NZREodYiz0AWYk8RIv0Hs67AWlTtzzI9HTzDfO
         9NJhLr6E8Ul8G+wqs7rrnxCtwfLye8Ci/5jC2vkA/9fJfLPbqeydGs9NwkSfGHksg7mR
         vttR+8qKymtjOYxRt6bQjQFuAgNKv4Ebhz3BKucRFJp0m6NSJeJZ5gbcY++PAMlNz+Ft
         Uq5Jbz61WllBPZv6KGylexe5fpucbxU2vHFkWvSu0hzQuxrnD8XV5v7pVzWlDy1LBkC6
         yragaGOt9OAMQtE9ctViDg+lId8JLdEEq39Jge6Jmz6HKF1R/FqAx7XLbBzVyVq3bFuC
         DHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pGe5KMDNTNCxqsyC4qL2pDy3dtoYQZOrQVXjIfF26uM=;
        b=GIK+oRXs2vM+ZAK+kCg+kPfFtiZM87tplQbaYCt1FA/4ng99iwKfz+o4VY3PwM55Al
         TQ0REfV0UJZ/p8EftgNDiL9Qk3hnLHHmxSuW8fL+eAiB/vbA2P9uxxUQ006xrRQYnckl
         kvNEMvcoA/Ee8zqyq+fPdnMU33uwWIbMLn0t20FXmqlvBFtUyVtUBNL5slwQoKgPl7n2
         uGdfqg5OZUGPcNj5HGi9jvGDexaTA13iYN0V/tetwbRzx9YcTYxi5fnJ9LqOmm4b43Cr
         MaJqrS925aTOccWIkytLXAWdkyMvUknRDxMnpZmSt3G01GhQ/fkcmtqrjGoO+8YKG4vq
         VYbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AMOIp2EaAZp1UiYj3wd7OH32wCcm0QN1bS5BLCwN5khMi3p4V
	2tX6cteJWgaPR0TM+yjWJQs=
X-Google-Smtp-Source: ABdhPJyd546j2Uw+J79jz6gBsyOXA1xgEQAQyWXzLIGznaMvIm3udV40ozLkAj9Tpc7nlh65nUJ5hg==
X-Received: by 2002:a37:5d83:: with SMTP id r125mr28298612qkb.50.1593049557046;
        Wed, 24 Jun 2020 18:45:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6809:: with SMTP id d9ls1969468qkc.3.gmail; Wed, 24 Jun
 2020 18:45:56 -0700 (PDT)
X-Received: by 2002:a37:7086:: with SMTP id l128mr26451264qkc.172.1593049556517;
        Wed, 24 Jun 2020 18:45:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593049556; cv=none;
        d=google.com; s=arc-20160816;
        b=BdhZ1eToy4IPClScvkqt5WXwLdGOQ09zZ83vgeOW6AMH2Dm9BBFjA8Z4tBvB69RcrM
         rhlMPWnZ72mVjXV/ExwC9f4h+9PoPifeZokEizcLGhTFvg0n3k08XFfDwzC4fm3ZnRtu
         Z4pISzrgCyETBuD+rcPOqw6UnFJT9WxBZp2CHPGnzGa+EZYw/i05GH5+KSZUySbNDzFD
         1Sg/Bqk0qcy+unjEsOY8OyV/74QMIMPjNz0G/YamDdqwghIHQ03aYW1Wt3qqkp8Tq3yf
         RXap4w7fLCjjE9Q+XPFUkcT9xCC3xvzJUU1qgeYPkIuGJyf7bd9EvbgBZSaJaoHaEIye
         mH6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=NCWiNmIOvXFRmSsuJI33xCe+sMXLvcNiaaT5Vwwk2zY=;
        b=JY+RgCe7t5KQwhPc6dbO/KCQCB9I4p0pM/Jb8BW1QSptsgIFLECINUTHDK+m7j5qn7
         tesreCe/4t8bHLyNLywd6lnWMsFSorKiUjyt7nagTkrjsBDtNAlZCkztS/sYxzIPr4ao
         1Mu3/ZfxVmro/+IKxXCGl9TkdmtV5WyKOy2uSoluJiYTCxe0abnHMCDemuyDmMv73FS/
         dYkK8kdBXIDc6vWlJrH9/rbbCdSracZt67FAhGMO9pOZjod2kaSeeQM8Xe+mYSEmxbnp
         duZJg6pl5BT57vNEgpsxUd3zfsaseLzKX9eHRRpRJ9JF1gCt7Od4tFF6QWXx/LfVIDHt
         rzAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=cXl7H9JB;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id x3si338616qtk.0.2020.06.24.18.45.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 18:45:56 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joGxc-0000WM-3w; Thu, 25 Jun 2020 01:45:52 +0000
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
From: Randy Dunlap <rdunlap@infradead.org>
To: Richard Weinberger <richard.weinberger@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Prasad Sodagudi <psodagud@codeaurora.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 clang-built-linux@googlegroups.com,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006231610.4993DC5@keescook>
 <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
 <903628180.54697.1592983405305.JavaMail.zimbra@nod.at>
 <202006241335.2C0FB5DF90@keescook>
 <b97853f0-c4be-7039-1d4c-96b3ab802472@infradead.org>
 <CAFLxGvxiyyX9s=y4phGxvWh-vonS1WPOUbRZr9mgq-B+wY+2nQ@mail.gmail.com>
 <10f7c20a-0a32-f5cf-7fdf-761db22afcd9@infradead.org>
 <03486f13-b138-2fc6-4d90-2737d86add2f@infradead.org>
Message-ID: <80f501f4-d4fb-1f22-5603-57b5490a695d@infradead.org>
Date: Wed, 24 Jun 2020 18:45:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <03486f13-b138-2fc6-4d90-2737d86add2f@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=cXl7H9JB;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 6/24/20 3:35 PM, Randy Dunlap wrote:
> On 6/24/20 3:23 PM, Randy Dunlap wrote:
>> On 6/24/20 3:01 PM, Richard Weinberger wrote:
>>> On Wed, Jun 24, 2020 at 11:29 PM Randy Dunlap <rdunlap@infradead.org> w=
rote:
>>>>
>>>> On 6/24/20 1:36 PM, Kees Cook wrote:
>>>>> On Wed, Jun 24, 2020 at 09:23:25AM +0200, Richard Weinberger wrote:
>>>>>> ----- Urspr=C3=BCngliche Mail -----
>>>>>>>>> Regardless, it seems arch/x86/um/asm/desc.h is not needed any mor=
e?
>>>>>>>
>>>>>>>> True that, we can rip the file.
>>>>>>>
>>>>>>> Has anyone fixed the uml build errors?
>>>>>>
>>>>>> I didn't realize that this is a super urgent issue. ;-)
>>>>>>
>>>>>> Kees, if you want you can carry a patch in your series, I'll ack it.
>>>>>> Otherwise I can also do a patch and bring it via the uml tree upstre=
am
>>>>>> as soon more fixes queued up.
>>>>>
>>>>> I think the lkdtm change will tweak this bug, so I'm happy to carry t=
he
>>>>> patch (I just haven't had time to create and test one). Is it really
>>>>> just as simple as removing arch/x86/um/asm/desc.h?
>>>>>
>>>>
>>>> I just tried that and the build is still failing, so No, it's not that=
 simple.
>>>>
>>>> But thanks for offering.
>>>>
>>>> I'll just ignore the UML build errors for now.
>>>
>>> This is a allyesconfig?
>>> I just gave CONFIG_LKDTM=3Dy a try, builds fine here.
>>>
>>
>> I'm building linux-next and it fails.
>=20
> More specifically, uml for i386 fails. x86_64 is OK.
> The problem is with the <asm/desc.h> file.
> I'm tampering with it...

I'm not getting anywhere with this. Too many mazes of tiny twisty passages.

>>> But the desc.h in uml is still in vain and can be deleted AFAICT.

Looks like lkdtm/bugs.c needs to get/use arch/x86/include/asm/processor.h
but it actually uses arch/x86/um/asm/processor*.h, which does not have the
needed structs etc.


Here are the build errors and warnings that I am seeing with allmodconfig:


  CC [M]  drivers/misc/lkdtm/bugs.o
In file included from ../arch/x86/include/asm/desc.h:11:0,
                 from ../drivers/misc/lkdtm/bugs.c:17:
../arch/x86/include/asm/cpu_entry_area.h:65:42: error: invalid application =
of =E2=80=98sizeof=E2=80=99 to incomplete type =E2=80=98struct x86_hw_tss=
=E2=80=99
  unsigned long stack[(PAGE_SIZE - sizeof(struct x86_hw_tss)) / sizeof(unsi=
gned long)];
                                          ^~~~~~
../arch/x86/include/asm/cpu_entry_area.h:66:20: error: field =E2=80=98tss=
=E2=80=99 has incomplete type
  struct x86_hw_tss tss;
                    ^~~
../arch/x86/include/asm/cpu_entry_area.h:89:26: error: field =E2=80=98entry=
_stack_page=E2=80=99 has incomplete type
  struct entry_stack_page entry_stack_page;
                          ^~~~~~~~~~~~~~~~
../arch/x86/include/asm/cpu_entry_area.h:100:20: error: field =E2=80=98tss=
=E2=80=99 has incomplete type
  struct tss_struct tss;
                    ^~~
In file included from ../drivers/misc/lkdtm/bugs.c:17:0:
../arch/x86/include/asm/desc.h:45:25: error: =E2=80=98GDT_ENTRIES=E2=80=99 =
undeclared here (not in a function); did you mean =E2=80=98LDT_ENTRIES=E2=
=80=99?
  struct desc_struct gdt[GDT_ENTRIES];
                         ^~~~~~~~~~~
                         LDT_ENTRIES
../arch/x86/include/asm/desc.h: In function =E2=80=98__set_tss_desc=E2=80=
=99:
../arch/x86/include/asm/desc.h:186:10: error: =E2=80=98__KERNEL_TSS_LIMIT=
=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98__=
KERNEL__=E2=80=99?
          __KERNEL_TSS_LIMIT);
          ^~~~~~~~~~~~~~~~~~
          __KERNEL__
../arch/x86/include/asm/desc.h:186:10: note: each undeclared identifier is =
reported only once for each function it appears in
../arch/x86/include/asm/desc.h: In function =E2=80=98native_set_ldt=E2=80=
=99:
../arch/x86/include/asm/desc.h:202:40: error: =E2=80=98GDT_ENTRY_LDT=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98GDT_ENTR=
Y_INIT=E2=80=99?
   write_gdt_entry(get_cpu_gdt_rw(cpu), GDT_ENTRY_LDT,
                                        ^
../arch/x86/include/asm/desc.h:123:75: note: in definition of macro =E2=80=
=98write_gdt_entry=E2=80=99
 #define write_gdt_entry(dt, entry, desc, type) native_write_gdt_entry(dt, =
entry, desc, type)
                                                                           =
^~~~~
../arch/x86/include/asm/desc.h: In function =E2=80=98native_load_tr_desc=E2=
=80=99:
../arch/x86/include/asm/desc.h:259:31: error: =E2=80=98GDT_ENTRY_TSS=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98GDT_ENTR=
IES=E2=80=99?
  asm volatile("ltr %w0"::"q" (GDT_ENTRY_TSS*8));
                               ^~~~~~~~~~~~~
                               GDT_ENTRIES
../arch/x86/include/asm/desc.h: In function =E2=80=98native_load_tls=E2=80=
=99:
../arch/x86/include/asm/desc.h:278:33: error: =E2=80=98struct thread_struct=
=E2=80=99 has no member named =E2=80=98tls_array=E2=80=99
   gdt[GDT_ENTRY_TLS_MIN + i] =3D t->tls_array[i];
                                 ^~
In file included from ../arch/x86/include/asm/string.h:3:0,
                 from ../include/linux/string.h:20,
                 from ../arch/x86/um/asm/processor_32.h:9,
                 from ../arch/x86/um/asm/processor.h:10,
                 from ../include/linux/rcupdate.h:30,
                 from ../include/linux/rculist.h:11,
                 from ../include/linux/pid.h:5,
                 from ../include/linux/sched.h:14,
                 from ../drivers/misc/lkdtm/bugs.c:10:
../arch/x86/include/asm/desc.h: In function =E2=80=98force_reload_TR=E2=80=
=99:
../arch/x86/include/asm/desc.h:288:18: error: =E2=80=98GDT_ENTRY_TSS=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98GDT_ENTR=
IES=E2=80=99?
  memcpy(&tss, &d[GDT_ENTRY_TSS], sizeof(tss_desc));
                  ^
../arch/x86/include/asm/string_32.h:182:45: note: in definition of macro =
=E2=80=98memcpy=E2=80=99
 #define memcpy(t, f, n) __builtin_memcpy(t, f, n)
                                             ^
In file included from ../include/linux/kernel.h:11:0,
                 from ../drivers/misc/lkdtm/lkdtm.h:7,
                 from ../drivers/misc/lkdtm/bugs.c:8:
../arch/x86/include/asm/desc.h: In function =E2=80=98invalidate_tss_limit=
=E2=80=99:
../arch/x86/include/asm/desc.h:327:32: error: =E2=80=98TIF_IO_BITMAP=E2=80=
=99 undeclared (first use in this function); did you mean =E2=80=98CONFIG_S=
BITMAP=E2=80=99?
  if (unlikely(test_thread_flag(TIF_IO_BITMAP)))
                                ^
../include/linux/compiler.h:78:42: note: in definition of macro =E2=80=98un=
likely=E2=80=99
 # define unlikely(x) __builtin_expect(!!(x), 0)
                                          ^
../arch/x86/include/asm/desc.h:327:15: note: in expansion of macro =E2=80=
=98test_thread_flag=E2=80=99
  if (unlikely(test_thread_flag(TIF_IO_BITMAP)))
               ^~~~~~~~~~~~~~~~
In file included from ../drivers/misc/lkdtm/bugs.c:17:0:
../arch/x86/include/asm/desc.h: At top level:
../arch/x86/include/asm/desc.h:334:0: warning: "LDT_empty" redefined
 #define LDT_empty(info)     \
=20
In file included from ../arch/um/include/asm/mmu.h:10:0,
                 from ../include/linux/mm_types.h:18,
                 from ../include/linux/sched/signal.h:13,
                 from ../drivers/misc/lkdtm/bugs.c:11:
../arch/x86/um/asm/mm_context.h:65:0: note: this is the location of the pre=
vious definition
 #define LDT_empty(info) (_LDT_empty(info))
=20
In file included from ../drivers/misc/lkdtm/bugs.c:17:0:
../arch/x86/include/asm/desc.h: In function =E2=80=98get_cpu_gdt_rw=E2=80=
=99:
../arch/x86/include/asm/desc.h:54:1: warning: control reaches end of non-vo=
id function [-Wreturn-type]
 }
 ^


--=20
~Randy
Reported-by: Randy Dunlap <rdunlap@infradead.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/80f501f4-d4fb-1f22-5603-57b5490a695d%40infradead.org.

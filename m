Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJOYYX3AKGQE7D7FEOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF721E889E
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:10:14 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id y12sf522813pgi.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590783013; cv=pass;
        d=google.com; s=arc-20160816;
        b=wJ/jId/LjcWr3pf3ZRdvCS4Dwfck08Y/hGFmB2HfSR+0KJVWV3WplWA+vIFu1leJAl
         kecj8b1bqzfcAC/h3RwiW6Ezimi4qV9Czqx1nML95Ad2EvSzcf9bdQlFdVeVJ+CfbmCk
         EtJfPF0SQsvBBGu/Po5p1DT89drp6Yzym15iJtJJdDOijpiOhP/16/MivCB3PpRkilqz
         YRfjYMv5nD1UM03KjshSV+s5l4CKiPCpJX4+uhF+z5+GHWjGuPrytq8qPyx1SGNZO5pg
         +ZEhgYaG/AZVEjqgw/X0RaXsX0UofbpG+2oGkS+VZVyHrx8mWeQrozjTavnN54IQq+ta
         iCaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=584IqXpCaW60Cz3RFtZnO+NWtIkzLYaVuiU4vtymbnM=;
        b=jHYmiAuycLEGYCmmLTE7Za62d8Ps7o5niOlosT2ZCUWr3RhSCHyGYvw8Zg2046pgsE
         S3eZTt9XDR9H/pB75uioe1z4GnTowybDoCgBw88yjs9SJau9C29ldK+avoiZCfsoPG1I
         1OQlOPEZLt5dAr1/w65pzKd5GeTgY64PXMxrMletEJNVm+P6UVrOkjybXN7h2rG2S0ua
         Rv3MFS0mHLgQrkNENQ0WM6mMGZFbhwyB1mPNI4qy1cRNeBGYAUgkHG2WmCHgnbBC4hGm
         UiKvxNoO5uxR+2F3N/blgVLPEqcajPVR8GyG4cIz10Ha4l++UjNNHlDbb0ctkxxzZetH
         fmJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rA1iDF4c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=584IqXpCaW60Cz3RFtZnO+NWtIkzLYaVuiU4vtymbnM=;
        b=Xzv6Pu9T5WzoD56GhvsH7s17Tv0fQSI0r15+erZCzPiTbVEo+e8YCTmt8F/iKQzvZ5
         RUB1YOilN641V4D3tedBkF8T70vq1X8S530aqFkT0twZ+H5VHjwfxOrXP+ztdzceXWeC
         D7GAMV4apVYoNe8vEftUroYUR2+67mrkBZsq5welRIStWKKz5Ldo6PMcKAASl+H3FUlc
         aqCNIEHdTllakcPZ2E0f69m/Wb7UzrFqWUJTjQ6xi5j1HiLvh9lY+6Cewv71ujtECYPY
         9n7ib8NAiofG73KaxbobzpHZ0uaOEd5hw9+O7dhVLxzTG9WYsbbkOFTZhzbyIFn48fGj
         iyAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=584IqXpCaW60Cz3RFtZnO+NWtIkzLYaVuiU4vtymbnM=;
        b=SJp7lICPCmF+XiQYcDlFDYnMn460idpHYMTKDoH44RybR4q0x0SjF1267mX7yMyNEK
         1qwyRY3u492MKEkbYy87Ka18GvBxQQhr8ey7W4lKAmk05NggWRrF9EEiJpTPubg84izJ
         jLE9YQoAVLkLyST14A8Sq3POxS4pIjXjc4VwTBaVNNOfiA5/FLjWh8Rh5Tma39u/g+SX
         6SwUONlXzBzohsQH1rGXqUTj3WoKjAcIP91glOuhxbBqEoDTmwpJrAWHB/ygRIaiDrkA
         VnFC9XVJSZUr0gSaryW1BWppAzvGnxp8tDv9Onsc5fCzuegZw9cmysrGRj5viX6y1n3P
         04Rw==
X-Gm-Message-State: AOAM531E7Zg1jqMEKNg4JawOuhrH0GpuYpYa/KjwlX7fk0fCG7eFKOml
	9pfWLHVvn5fp0QzSjRmDpbI=
X-Google-Smtp-Source: ABdhPJzOyCweu1iC94fc6NsiRE5pwcMvDULDIxVmfnJkbt6fRhJ2CBs+BGszlWzimC3GZq9psw4e5A==
X-Received: by 2002:a17:90a:642:: with SMTP id q2mr11440340pje.71.1590783013618;
        Fri, 29 May 2020 13:10:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b82:: with SMTP id w2ls3017044pll.1.gmail; Fri, 29
 May 2020 13:10:13 -0700 (PDT)
X-Received: by 2002:a17:902:ab8b:: with SMTP id f11mr10587895plr.145.1590783013200;
        Fri, 29 May 2020 13:10:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590783013; cv=none;
        d=google.com; s=arc-20160816;
        b=ZMLmZBnXez86HagoGo+hzXO1c5vCqnPxOzwN5UXsfY4OOopvwjw1MnWTKaIfhq4qhq
         ku/FhmsiWoLlToKLjvKLKybnPWKIwmqk0H+Bboj+qkfBn12EkLMXRaeFR0iTWEAAkbqW
         B0KDX0BKbKK3re/409CLHzabZnUgfuHD5qThGPQtAxb+nSaIkqlbWiyxhTR5tlo14qUM
         5Baylp7R8ssXkjIpMQ/FlpxZ+594qBuzhp1Ocd+YnQXS5aXQQySgekwaYqY8O0jmqEAv
         GWmcaF4cJ7L0VID7IP7r4ZOJFMfz55JNLsF7cN9wBuKyUHhq4pA588V47GABBZe7678D
         3EDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=k7qHvXfcLPRZW70K7Ww/JQ6soXN2aoKEcSnKsZaACQ8=;
        b=ynqQlHANIh2c4jSagl3cUwdgJPDrV+bVz9PFsz7WxqO+uquYRwChCe55Ri7nZXfK+2
         spL4Rga5FXJMQsTQy7RfC9PNxqZC/rgDWXJ4KECDo+CEvSwJc1hVQMRnHXO8Gqtx7RKx
         jmB2WspgSecM8xKGDCITj8TtoejHtehCXwWuQyauRtDGflqR6//JipOcqiSKC5WRVByV
         cBnoqYjmsExeLowSh/qfwRcofcLbfjd1YV0yr9CH3jU2PJkM8zhhL29FQ7DWZCPuypuU
         ZllDmoZmqBhrJMd9o68tGE5hBjWGBXUKfd/3WICPjCBtTzt+xJUaYBfJf3uOJ0eMkUmY
         OV/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rA1iDF4c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id v143si755457pfc.3.2020.05.29.13.10.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 13:10:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id k22so1673085pls.10
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 13:10:13 -0700 (PDT)
X-Received: by 2002:a17:90a:4e8c:: with SMTP id o12mr10331146pjh.25.1590783012476;
 Fri, 29 May 2020 13:10:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200529200347.2464284-1-keescook@chromium.org> <20200529200347.2464284-2-keescook@chromium.org>
In-Reply-To: <20200529200347.2464284-2-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 May 2020 13:10:01 -0700
Message-ID: <CAKwvOdn_gFaBbvdMDu9WuuzOyjZXxv4kJMGdO-71r-0Nz0wi5Q@mail.gmail.com>
Subject: Re: [PATCH 1/4] lkdtm: Avoid more compiler optimizations for bad writes
To: Kees Cook <keescook@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Prasad Sodagudi <psodagud@codeaurora.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Amit Daniel Kachhap <amit.kachhap@arm.com>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rA1iDF4c;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, May 29, 2020 at 1:03 PM Kees Cook <keescook@chromium.org> wrote:
>
> It seems at least Clang is able to throw away writes it knows are
> destined for read-only memory, which makes things like the WRITE_RO test
> fail, as the write gets elided. Instead, force the variable to be

Heh, yep.  I recall the exact patch in LLVM causing build breakages
for kernels and various parts of Android userspace within the past
year, for code that tried to write to variables declared const through
casts that removed the const. (Was the last patch for us to build MIPS
IIRC).  Doing so is explicitly UB.  I did feel that that particular
"optimization" was very specific to C/C++, and should not have been
performed in LLVM (which should be more agnostic to the front end
language's wacky rules, IMO) but rather Clang (which doesn't do much
C/C++ language specific optimizations currently, though there are
rough plans forming to change that).

> volatile, and make similar changes through-out other tests in an effort
> to avoid needing to repeat fixing these kinds of problems. Also includes
> pr_err() calls in failure paths so that kernel logs are more clear in
> the failure case.
>
> Reported-by: Prasad Sodagudi <psodagud@codeaurora.org>
> Suggested-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/misc/lkdtm/bugs.c     | 11 +++++------
>  drivers/misc/lkdtm/perms.c    | 22 +++++++++++++++-------
>  drivers/misc/lkdtm/usercopy.c |  7 +++++--
>  3 files changed, 25 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
> index 886459e0ddd9..e1b43f615549 100644
> --- a/drivers/misc/lkdtm/bugs.c
> +++ b/drivers/misc/lkdtm/bugs.c
> @@ -118,9 +118,8 @@ noinline void lkdtm_CORRUPT_STACK(void)
>         /* Use default char array length that triggers stack protection. */
>         char data[8] __aligned(sizeof(void *));
>
> -       __lkdtm_CORRUPT_STACK(&data);
> -
> -       pr_info("Corrupted stack containing char array ...\n");
> +       pr_info("Corrupting stack containing char array ...\n");
> +       __lkdtm_CORRUPT_STACK((void *)&data);
>  }
>
>  /* Same as above but will only get a canary with -fstack-protector-strong */
> @@ -131,9 +130,8 @@ noinline void lkdtm_CORRUPT_STACK_STRONG(void)
>                 unsigned long *ptr;
>         } data __aligned(sizeof(void *));
>
> -       __lkdtm_CORRUPT_STACK(&data);
> -
> -       pr_info("Corrupted stack containing union ...\n");
> +       pr_info("Corrupting stack containing union ...\n");
> +       __lkdtm_CORRUPT_STACK((void *)&data);
>  }
>
>  void lkdtm_UNALIGNED_LOAD_STORE_WRITE(void)
> @@ -248,6 +246,7 @@ void lkdtm_ARRAY_BOUNDS(void)
>
>         kfree(not_checked);
>         kfree(checked);
> +       pr_err("FAIL: survived array bounds overflow!\n");
>  }
>
>  void lkdtm_CORRUPT_LIST_ADD(void)
> diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
> index 62f76d506f04..2dede2ef658f 100644
> --- a/drivers/misc/lkdtm/perms.c
> +++ b/drivers/misc/lkdtm/perms.c
> @@ -57,6 +57,7 @@ static noinline void execute_location(void *dst, bool write)
>         }
>         pr_info("attempting bad execution at %px\n", func);
>         func();
> +       pr_err("FAIL: func returned\n");
>  }
>
>  static void execute_user_location(void *dst)
> @@ -75,20 +76,22 @@ static void execute_user_location(void *dst)
>                 return;
>         pr_info("attempting bad execution at %px\n", func);
>         func();
> +       pr_err("FAIL: func returned\n");
>  }
>
>  void lkdtm_WRITE_RO(void)
>  {
> -       /* Explicitly cast away "const" for the test. */
> -       unsigned long *ptr = (unsigned long *)&rodata;
> +       /* Explicitly cast away "const" for the test and make volatile. */
> +       volatile unsigned long *ptr = (unsigned long *)&rodata;
>
>         pr_info("attempting bad rodata write at %px\n", ptr);
>         *ptr ^= 0xabcd1234;
> +       pr_err("FAIL: survived bad write\n");
>  }
>
>  void lkdtm_WRITE_RO_AFTER_INIT(void)
>  {
> -       unsigned long *ptr = &ro_after_init;
> +       volatile unsigned long *ptr = &ro_after_init;
>
>         /*
>          * Verify we were written to during init. Since an Oops
> @@ -102,19 +105,21 @@ void lkdtm_WRITE_RO_AFTER_INIT(void)
>
>         pr_info("attempting bad ro_after_init write at %px\n", ptr);
>         *ptr ^= 0xabcd1234;
> +       pr_err("FAIL: survived bad write\n");
>  }
>
>  void lkdtm_WRITE_KERN(void)
>  {
>         size_t size;
> -       unsigned char *ptr;
> +       volatile unsigned char *ptr;
>
>         size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
>         ptr = (unsigned char *)do_overwritten;
>
>         pr_info("attempting bad %zu byte write at %px\n", size, ptr);
> -       memcpy(ptr, (unsigned char *)do_nothing, size);
> +       memcpy((void *)ptr, (unsigned char *)do_nothing, size);
>         flush_icache_range((unsigned long)ptr, (unsigned long)(ptr + size));
> +       pr_err("FAIL: survived bad write\n");
>
>         do_overwritten();
>  }
> @@ -193,9 +198,11 @@ void lkdtm_ACCESS_USERSPACE(void)
>         pr_info("attempting bad read at %px\n", ptr);
>         tmp = *ptr;
>         tmp += 0xc0dec0de;
> +       pr_err("FAIL: survived bad read\n");
>
>         pr_info("attempting bad write at %px\n", ptr);
>         *ptr = tmp;
> +       pr_err("FAIL: survived bad write\n");
>
>         vm_munmap(user_addr, PAGE_SIZE);
>  }
> @@ -203,19 +210,20 @@ void lkdtm_ACCESS_USERSPACE(void)
>  void lkdtm_ACCESS_NULL(void)
>  {
>         unsigned long tmp;
> -       unsigned long *ptr = (unsigned long *)NULL;
> +       volatile unsigned long *ptr = (unsigned long *)NULL;
>
>         pr_info("attempting bad read at %px\n", ptr);
>         tmp = *ptr;
>         tmp += 0xc0dec0de;
> +       pr_err("FAIL: survived bad read\n");
>
>         pr_info("attempting bad write at %px\n", ptr);
>         *ptr = tmp;
> +       pr_err("FAIL: survived bad write\n");
>  }
>
>  void __init lkdtm_perms_init(void)
>  {
>         /* Make sure we can write to __ro_after_init values during __init */
>         ro_after_init |= 0xAA;
> -
>  }
> diff --git a/drivers/misc/lkdtm/usercopy.c b/drivers/misc/lkdtm/usercopy.c
> index e172719dd86d..b833367a45d0 100644
> --- a/drivers/misc/lkdtm/usercopy.c
> +++ b/drivers/misc/lkdtm/usercopy.c
> @@ -304,19 +304,22 @@ void lkdtm_USERCOPY_KERNEL(void)
>                 return;
>         }
>
> -       pr_info("attempting good copy_to_user from kernel rodata\n");
> +       pr_info("attempting good copy_to_user from kernel rodata: %px\n",
> +               test_text);
>         if (copy_to_user((void __user *)user_addr, test_text,
>                          unconst + sizeof(test_text))) {
>                 pr_warn("copy_to_user failed unexpectedly?!\n");
>                 goto free_user;
>         }
>
> -       pr_info("attempting bad copy_to_user from kernel text\n");
> +       pr_info("attempting bad copy_to_user from kernel text: %px\n",
> +               vm_mmap);
>         if (copy_to_user((void __user *)user_addr, vm_mmap,
>                          unconst + PAGE_SIZE)) {
>                 pr_warn("copy_to_user failed, but lacked Oops\n");
>                 goto free_user;
>         }
> +       pr_err("FAIL: survived bad copy_to_user()\n");
>
>  free_user:
>         vm_munmap(user_addr, PAGE_SIZE);
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200347.2464284-2-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn_gFaBbvdMDu9WuuzOyjZXxv4kJMGdO-71r-0Nz0wi5Q%40mail.gmail.com.

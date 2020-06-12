Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3N3RT3QKGQEZAIMWLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EFF1F73D0
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 08:17:19 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id k15sf5594558pgt.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 23:17:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591942638; cv=pass;
        d=google.com; s=arc-20160816;
        b=E9hQLB+IdheMkQ/cHXiU3hnCcKt8drJAxoJh6Q6CylSwwxZu82R76BoWgTVUX4wLUW
         fwXCv9JujzrszasCbhsmHLxLg3cDUfUkLzrxI1DFCi1PfH7EkQWJjoBMNTHLv8d55dfH
         O2kaFc7lsRNzLxjykesaC/shcQEDZWszwFybsp7Jq2mqHUfqrQoXGSAO8vW1ZyIJteqS
         5l/i+8Ct3uwbYVhIOdiSrNq15vZQCCroPiZzYRtDTawX6JBUM5SpJ4VtHqDu/oy32zsT
         w5XpK7fBdbd+NzULCwgS7oujeKLAw0EFyA+RNyA81hAUXzPyGGFQtqtoGPODitVGgw3q
         GISQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6APLNqhwIwIqlVepBmQTITSpbg7ZqBzzLlWfR5KHQbI=;
        b=cs2JQncrdufQV6+foxHPreptU4acoAbIBanFJbeNWHHvJ001UNnv4Jblq7KNdlRPjX
         szu3gGOfjCVrrgYxVCqAxfq/wRBTPUA0kejLD69vvcnSwdVFn/9+tEdXgpmB4ssF5zCu
         kwnc+VhKUAgHhj4HveOJUSvPGFiCMlVHSY6HMHSa2IfPa1YrLVQx1JMI73Evr6tRf/aV
         71P6zdN8If01pjmhJe1BuBpGQTLhQl9y4Yh1zKeVQV+dxghGh3ksPJUvQ1DXw24FRmK0
         CsycajV/5VNSYzfOXUQjLtQcijlR6WDTqx1ZcK5ZE8UEJN2OnP8JA7yiPQBZo1NFeE3O
         JNOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=E4dphn7u;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6APLNqhwIwIqlVepBmQTITSpbg7ZqBzzLlWfR5KHQbI=;
        b=IKHr9OAYUpcwSjbCh5seBYaNCrbIZ6ICeQHzfcEt9u8Jc7G9mf7qOpODkwzDKnjl7Z
         8nmqfIySOezr04d62HbHqa0BjlEawNfPeoks0EvefMjWgcGcsleUAjFDmokyFqmpW0yA
         teX7B9cEmcB79HwxGuGtJ3vaCzOmzeRcoiSNEklARkfDhsfZCdhz0/S88eM1qvHXsIfJ
         WJ2i8WCtDjJH9J7xNiEOHGu8K5joG5WT9/eMB4pnX/05v8a+ySbYo24M5tDjWwOZMLJ3
         V+Eo4hNuuJRmpzs+dtBMZyrOnrKySsYqDXCjeW8FbPz7WGfTz+mhWxmoyV8U+Vq/NFdD
         2zEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6APLNqhwIwIqlVepBmQTITSpbg7ZqBzzLlWfR5KHQbI=;
        b=uC0PxEfahUr+Nkip1/uKa9CO50tAYDQDJUooPso9Vj0xOBNWg3T10ms5Mq8n+VD87L
         eQ56py6NSMAL882ioYgVF9uvf2x8PNWYNih1TZWcTVSBg+GWfdWaf2hoZ0Xn/0lPoUyt
         thrGAmXXA2thKxxX9wG5vscc+WWvK/2HrUhx1gkyumP+LNCB0fiaasOGd1H0W2V6SUlN
         vY0y4hy83EIdIJl8ni82GG9Je5LPHYCVRXxtiGtH4KyZIb8aeC3o/pXchFfaSUgY9JcL
         V4+6lovTwXt/hUbvT1QLJXDpVuj44zh7mmZyz48RviBUidITUzplNOovxfB6hbjT534j
         my/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532C63f7paafgmmVhPHJ9Ns6NUmzd9iwyDGBI4lzn+ynaYKfPkH5
	cSCFsGp7f5r5HMSOYW5flM0=
X-Google-Smtp-Source: ABdhPJyMzJNpltXVimva9X8bpXCIX1KLP/NUI11oSbz0vISf6p1nghNRHH4s2Ie3j1hAh9lyo7OULw==
X-Received: by 2002:a62:d158:: with SMTP id t24mr10298103pfl.267.1591942637768;
        Thu, 11 Jun 2020 23:17:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c0d:: with SMTP id j13ls968702pga.8.gmail; Thu, 11 Jun
 2020 23:17:17 -0700 (PDT)
X-Received: by 2002:a63:f143:: with SMTP id o3mr10183282pgk.453.1591942637360;
        Thu, 11 Jun 2020 23:17:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591942637; cv=none;
        d=google.com; s=arc-20160816;
        b=pi0Ig0XNBr9sUQ9CXDzNCFYBqnaufW93fMAYk8NyB+XI9jq3Z4I0EpVpqHc6yBy1Pg
         jyhONx7XTY2mir01p1jbo05+WX6NjDiQRCsNCA1ZtQpEBRa+gPiZD8evo6N0Gfqaad0T
         ugsxnjGZEX6e+XA1FEskA4PrD2WCF+J/+wOolXLYsTUeZ2tb624CmMIYRZqW292P9L/o
         GjpOKKx5jKxRjJTKfkk+1eeEDzH6HnO3PefUdV5OvbodOsQEEaDFFf71ppcl3gxJD4PJ
         pO24SFUAYtDHageKlfpaX3t6cemDpI34P1BjsVBKo/LQ+xBdm8UNBl5kvMAMGcaQqPjm
         xGag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zpNul/n24BGtA0wNEEb3Bqb48kl11YHKOy5UfmBsLkI=;
        b=n0g84H/JQboVjZ9z//8Hkvh5+inGJ3N5SLAxjImq92pVpNdcxKj35mR2VJWuzNygG0
         iwWMSfAzu7UXOriSuW6V8ewa6EPOn0udMoWR2MVzQThFju1JrOLkLd1sMGD6s4QaaQdp
         yAskh/6glxfpc1oOmxoi7iIR1HdDJluby9TfAU6w2m+fggA2DdDyzl3Ax80eRpwv4VkO
         8TZwOi/D19hB+jHN6WPvHleCp/yorTmilXwM7utoF926CNlCLzsVKTGMtUwuGWYfQwGz
         Z8FnvDU+apD0IqS2pNKF/af4Y+u6PMAnMKAje6NlO7pDGFQgOhBwWsQkv16xVNbxwj01
         jHGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=E4dphn7u;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v197si467796pfc.0.2020.06.11.23.17.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 23:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id h185so3828744pfg.2
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 23:17:17 -0700 (PDT)
X-Received: by 2002:a63:3503:: with SMTP id c3mr9415517pga.371.1591942636884;
        Thu, 11 Jun 2020 23:17:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r3sm4068757pjj.21.2020.06.11.23.17.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 23:17:15 -0700 (PDT)
Date: Thu, 11 Jun 2020 23:17:14 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
	linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>,
	yuu ichii <byahu140@heisei.be>
Subject: Re: [PATCH] ACPI: sysfs: Fix pm_profile_attr type
Message-ID: <202006112217.2E6CE093@keescook>
References: <20200612045149.1837-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200612045149.1837-1-natechancellor@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=E4dphn7u;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jun 11, 2020 at 09:51:50PM -0700, Nathan Chancellor wrote:
> When running a kernel with Clang's Control Flow Integrity implemented,
> there is a violation that happens when accessing
> /sys/firmware/acpi/pm_profile:
> 
> $ cat /sys/firmware/acpi/pm_profile
> 0
> 
> $ dmesg
> ...
> [   17.352564] ------------[ cut here ]------------
> [   17.352568] CFI failure (target: acpi_show_profile+0x0/0x8):
> [   17.352572] WARNING: CPU: 3 PID: 497 at kernel/cfi.c:29 __cfi_check_fail+0x33/0x40
> [   17.352573] Modules linked in:
> [   17.352575] CPU: 3 PID: 497 Comm: cat Tainted: G        W         5.7.0-microsoft-standard+ #1
> [   17.352576] RIP: 0010:__cfi_check_fail+0x33/0x40
> [   17.352577] Code: 48 c7 c7 50 b3 85 84 48 c7 c6 50 0a 4e 84 e8 a4 d8 60 00 85 c0 75 02 5b c3 48 c7 c7 dc 5e 49 84 48 89 de 31 c0 e8 7d 06 eb ff <0f> 0b 5b c3 00 00 cc cc 00 00 cc cc 00 85 f6 74 25 41 b9 ea ff ff
> [   17.352577] RSP: 0018:ffffaa6dc3c53d30 EFLAGS: 00010246
> [   17.352578] RAX: 331267e0c06cee00 RBX: ffffffff83d85890 RCX: ffffffff8483a6f8
> [   17.352579] RDX: ffff9cceabbb37c0 RSI: 0000000000000082 RDI: ffffffff84bb9e1c
> [   17.352579] RBP: ffffffff845b2bc8 R08: 0000000000000001 R09: ffff9cceabbba200
> [   17.352579] R10: 000000000000019d R11: 0000000000000000 R12: ffff9cc947766f00
> [   17.352580] R13: ffffffff83d6bd50 R14: ffff9ccc6fa80000 R15: ffffffff845bd328
> [   17.352582] FS:  00007fdbc8d13580(0000) GS:ffff9cce91ac0000(0000) knlGS:0000000000000000
> [   17.352582] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   17.352583] CR2: 00007fdbc858e000 CR3: 00000005174d0000 CR4: 0000000000340ea0
> [   17.352584] Call Trace:
> [   17.352586]  ? rev_id_show+0x8/0x8
> [   17.352587]  ? __cfi_check+0x45bac/0x4b640
> [   17.352589]  ? kobj_attr_show+0x73/0x80
> [   17.352590]  ? sysfs_kf_seq_show+0xc1/0x140
> [   17.352592]  ? ext4_seq_options_show.cfi_jt+0x8/0x8
> [   17.352593]  ? seq_read+0x180/0x600
> [   17.352595]  ? sysfs_create_file_ns.cfi_jt+0x10/0x10
> [   17.352596]  ? tlbflush_read_file+0x8/0x8
> [   17.352597]  ? __vfs_read+0x6b/0x220
> [   17.352598]  ? handle_mm_fault+0xa23/0x11b0
> [   17.352599]  ? vfs_read+0xa2/0x130
> [   17.352599]  ? ksys_read+0x6a/0xd0
> [   17.352601]  ? __do_sys_getpgrp+0x8/0x8
> [   17.352602]  ? do_syscall_64+0x72/0x120
> [   17.352603]  ? entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [   17.352604] ---[ end trace 7b1fa81dc897e419 ]---
> 
> When /sys/firmware/acpi/pm_profile is read, sysfs_kf_seq_show is called,
> which in turn calls kobj_attr_show, which gets the ->show callback
> member by calling container_of on attr (casting it to struct
> kobj_attribute) then calls it.
> 
> There is a CFI violation because pm_profile_attr is of type
> struct device_attribute but kobj_attr_show calls ->show expecting it
> to be from struct kobj_attribute. CFI checking ensures that function
> pointer types match when doing indirect calls. Fix pm_profile_attr to
> be defined in terms of kobj_attribute so there is no violation or
> mismatch.
> 
> Fixes: 362b646062b2 ("ACPI: Export FADT pm_profile integer value to userspace")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1051
> Reported-by: yuu ichii <byahu140@heisei.be>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/acpi/sysfs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/acpi/sysfs.c b/drivers/acpi/sysfs.c
> index 3a89909b50a6..76c668c05fa0 100644
> --- a/drivers/acpi/sysfs.c
> +++ b/drivers/acpi/sysfs.c
> @@ -938,13 +938,13 @@ static void __exit interrupt_stats_exit(void)
>  }
>  
>  static ssize_t
> -acpi_show_profile(struct device *dev, struct device_attribute *attr,
> +acpi_show_profile(struct kobject *kobj, struct kobj_attribute *attr,
>  		  char *buf)
>  {
>  	return sprintf(buf, "%d\n", acpi_gbl_FADT.preferred_profile);
>  }
>  
> -static const struct device_attribute pm_profile_attr =
> +static const struct kobj_attribute pm_profile_attr =
>  	__ATTR(pm_profile, S_IRUGO, acpi_show_profile, NULL);

My mind absolutely rebelled at how this could not have been caught
at compile time nor runtime already. Everything appears to be wrong
here. It's a different structure, it's getting assigned, it's getting
called! And then I went looking and started to scream. Apologies if this
investigation is redundant to a thread I didn't see...

First, __ATTR(), like most static initializer macros, is not typed.
Normally this is okay because different structures have different
members, so it wouldn't compile. But not in this case here. Everything
assigned by __ATTR exists in both because ... they have an identical set
of structure member names:

struct device_attribute {
        struct attribute        attr;
        ssize_t (*show)(struct device *dev, struct device_attribute *attr,
                        char *buf);
        ssize_t (*store)(struct device *dev, struct device_attribute *attr,
                         const char *buf, size_t count);
};

struct kobj_attribute {
        struct attribute attr;
        ssize_t (*show)(struct kobject *kobj, struct kobj_attribute *attr,
                        char *buf);
        ssize_t (*store)(struct kobject *kobj, struct kobj_attribute *attr,
                         const char *buf, size_t count);
};

But the show and store are different prototypes, so surely any variable
assignments or argument passing would catch the mismatch. But no!
The sysfs API only takes the .attr member address:

        result = sysfs_create_file(acpi_kobj, &pm_profile_attr.attr);

and, of course, that doesn't break because both struct device_attribute
and struct kobj_attribute do, in fact, use the same structure for their
.attr (struct attribute).

But here's the kicker:

static ssize_t kobj_attr_show(struct kobject *kobj, struct attribute *attr,
                              char *buf)
{
        struct kobj_attribute *kattr;
        ssize_t ret = -EIO;

        kattr = container_of(attr, struct kobj_attribute, attr);
        if (kattr->show)
                ret = kattr->show(kobj, kattr, buf);
	...

A container_of() is used to calculate the offset. This doesn't explode
(normally) at runtime because, as established, these structures have the
same layout, so .show is in the same place.

Some thoughts that I am terrified to check or attempt, but I can't help
myself:

1) Is __ATTR() regularly used to perform cross-structure initialization?

Answer appears to be "yes":

include/linux/device.h: struct device_attribute dev_attr_##_name = __ATTR_WO(_name)
include/linux/device/bus.h:     struct bus_attribute bus_attr_##_name = __ATTR_RW(_name)

2) Should static initializer macros be typed to catch bad cross-type
   assignments? (Which depends on "1" being "no".)

Changing this looks very hard, but it does make me wonder about doing
stuff like this for static initializer macros:

-#define __ATTR(_name, _mode, _show, _store) { \
+#define __ATTR(_name, _mode, _show, _store) (struct kobject *) { \

Obviously not possible here, though.

3) This cannot possibly be the only case of this. Given the answer to
   #1, this bug must be endemic.

static inline int __must_check sysfs_create_file(struct kobject *kobj,
                                                 const struct attribute *attr)
{
        return sysfs_create_file_ns(kobj, attr, NULL);
}

$ git grep 'sysfs_create_file.*, &.*\.attr' | wc -l
51

16 appear to actually be kobj_attribute. Those are fine.

Similar to the patch above, 9 more are from DEVICE_ATTR() (named
"dev_attr_$foo):

#define DEVICE_ATTR(_name, _mode, _show, _store) \
        struct device_attribute dev_attr_##_name = __ATTR(_name, _mode, _show, _store)

And a here are a bunch more macro-based ones:

class_attr	is struct class_attribute

mdev_type_attr	is struct mdev_type_attribute

format_attr	is half struct device_attribute and half struct kobj_attribute:

arch/x86/events/amd/uncore.c:static struct device_attribute format_attr_##_dev##_name = __ATTR_RO(_dev);
arch/x86/events/intel/cstate.c:static struct kobj_attribute format_attr_##_var =                \
arch/x86/events/intel/uncore.h:static struct kobj_attribute format_attr_##_var =                   \
arch/x86/events/rapl.c:static struct kobj_attribute format_attr_##_var = \
drivers/perf/thunderx2_pmu.c:static struct device_attribute format_attr_##_var =                   \
include/linux/perf_event.h:static struct device_attribute format_attr_##_name = __ATTR_RO(_name)

These 2 are also not kobj_attribute:

include/linux/module.h:extern struct module_attribute module_uevent;
kernel/module.c:struct module_attribute module_uevent =

I think all of these non-kobj_attribute cases will trip CFI too, and
this design pattern appears to be intentional. So that will be fun! :)

I haven't gone through all of the 51 carefully, but this looks like a
much larger problem than just this one place. :(

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006112217.2E6CE093%40keescook.

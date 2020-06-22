Return-Path: <clang-built-linux+bncBDDNDZNP7UOBBI5GYP3QKGQEAK6B2IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3CD203B7C
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 17:49:56 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id y12sf1550413lfh.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 08:49:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592840995; cv=pass;
        d=google.com; s=arc-20160816;
        b=oWwDukFiYVJlHWGu4dFjn8Tbr4Rkc59odeBbVbhm0WWG9jh4nMho8Y7dAXzxuQ2stl
         evek0xlBes1Xx8hnD7TeV3+C5n+bth8848+yZZWWvjDK/ehdZFGOAxjStUONxYddB2o/
         BsAUeyyDT4K6pMwZtgP2mhzGqIkRg4SQnuqShLp9s0trM3HvZNrBYvQPUdo5XeSbOz2F
         s0xxnv6aER9Cn1o+0on5kfHJTn1LV35KvsFSvPeQezcz38wJSBBOKcE5oZlUlEwxs1n8
         OOhLOhcZJf2+8+fJuF8ofov11KGkkYXyTBCV0YYxDmsLykOyV3C44WkF6spsKXVY/IH3
         rXAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pOaHqHwDwV5WUl3FE62EF1bpQKYe8z7UwWN2JXSbCVc=;
        b=hxJ2xr3lqLUWn4X3lvTpsCISto6I/G0CaeWVOVYN2j8XdIkG68F9dbSQCjNqLdSm9S
         30GQBQmN8LBFSMNKTjM5yo4v70o01tfRzKa+2Yix3lpLRcUTHpkPxpeO2+PIPwH55cQo
         9//v2klkYUqqpmtRpL21Wdk4UuqksqLOKUpVhbBWxKYP/S+XvIAxkfwP7NZ0d0ZX2Etn
         6CxlstJEa6gO0i1uP73g4PE4n77DC8zMAyzsFfQPOtfGSctpooP6cZU40A8vjQJ11eHT
         73gviwYWv8Fgs9Zlry8zgoA5WapKXkxNeIzbSZ3YtLd4jc+ggvXZBxSAeyogxo4QNUFB
         J8ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) smtp.mailfrom=rjw@rjwysocki.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pOaHqHwDwV5WUl3FE62EF1bpQKYe8z7UwWN2JXSbCVc=;
        b=XGgLzrhDmhI1/i1Onwny3R48ORSldPiXnur7iU2G6nXdfGgIufxiGhcoS4op+QY9qC
         KtwCdr/sR40B6m24DfeTEi9Nw4yN9Sm9garAJF3evC6YjymDQCgPD7PMqxWE6sQYgA+U
         IkRGZOM5YzAxdf3531H8rvArM/Tn9RKS6egEelOOhNf/sfq5TTBy+pvsY8aUTJL53db4
         2KPjmya2QlsilLLfMWW7dUOjSA9wxe+my0n6WP14iasctV8mCoPc+L1QKXkYkI/1WFKw
         8j+PqvNHXneILlncWpBIa2Mmwwfo/no9gNFH7fY8cJEaPG88o81/NS9U2Oks2gW/sC9D
         jQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pOaHqHwDwV5WUl3FE62EF1bpQKYe8z7UwWN2JXSbCVc=;
        b=TZ4diOebghVMEyr/ByJX2riuT256qiCZ89vi+BOSIqvWekHfXsdDVRsfWQtz1U7QEs
         b3sv6hfn1uptVJ90brt/343Fs5DwYOklZp4lLGxWJBUb6bYsAhHd8qWmVfaouWw11B9a
         BNyQrAc3JsUdFM5oHXXYXvU3U5Uv4luskO0N+TmLUyxnqD5WXGL4nMP8H5BzMc8Hvz1b
         hCnNNPgKL7+8cu+eOEt1pn0RjDsFLPy1qcob07sDCUibvqsAGinEIhXRpMZ+Y0ermwwI
         jqqv9PGCE8tIE7Lq1qSB6g5D6g7fqEjIe7r3uXEIFllm7hO+cOZ91agsVPn1JhoAjraN
         qzeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QOkqrghCbGumXEvSfW3aBDfYyLct0pOqXTPxHLv9KisIxXKiR
	J23SYDEhJMW9g5LCz7sN74s=
X-Google-Smtp-Source: ABdhPJyn44N11T8fSKp7mt30nXXWxZSdicxn8M/w1Y076Lcmi5Yq3femX1HIv5lNGdWfSaHRbCRKZg==
X-Received: by 2002:ac2:5629:: with SMTP id b9mr1752449lff.208.1592840995706;
        Mon, 22 Jun 2020 08:49:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3047:: with SMTP id b7ls2336114lfb.1.gmail; Mon, 22
 Jun 2020 08:49:55 -0700 (PDT)
X-Received: by 2002:a19:e05d:: with SMTP id g29mr10037002lfj.217.1592840995113;
        Mon, 22 Jun 2020 08:49:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592840995; cv=none;
        d=google.com; s=arc-20160816;
        b=aWeunsFPCxZNJvHbINeBcNTQ6LrLOsY6DmbEO356hXkD4f4Mzf9FyuzXcBXhNCjTJr
         5qJXR0qWrvpCss29ENgbAAg1SOcBfl3obvDlHLrxY0Vlzk96IkSp9BMS9zHU4dyClN+F
         wiAnT/2BGZYh33C3MHBnP/YGafqMajoAkA/IwiGOERifuYEijgR4X/yz3E34mPWpBi3Z
         DhUyM2N4t2Us+Tdl/bO69mUO5EfGVKNaryTgzMZHh24fWry+AwROFBDQRiM3b7SMp/ze
         Ij3u2tKPwwbkmR+u7NYpUZeRzimkBZHKJdi9KdY4/YTtEFb1szDfyFouI4YtEKEjMr2T
         815g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=eq7fsE7n1T+WQ13j540qHpHaV9B5Q0wtavo96rGdWxg=;
        b=ER7HybRgI1Vr/Li1wrzqW3Qq8Ed/j05vBQHPkNgCHqrOC18mFMgo6NMIvzVdTEBMm5
         +n7iR4a4BK+bGt5J5yiFk28Xhn3/pRdBa8UVux7fPOTT25bxpk7lHzGwHBQpqknPgrfy
         ONQ/OLggQ+4exYm97AUm7YR/jBPEv6dwuvVdhfgu7Bpy/k0lGyxax/wvu3TWiqEvbQhI
         BZRn0smCKdaDYq7PX560Q45VdS/pTDalFw6sQHNG0kFGzbkA8IdvuTSrYzH7weJPOo34
         CRhcCWjYSHGtI7DYtba682zHm+UrMjfRkreS647JfUrFK7lOboPkC9tOQqUJLm5fTJuU
         MPMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) smtp.mailfrom=rjw@rjwysocki.net
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl. [79.96.170.134])
        by gmr-mx.google.com with ESMTPS id 7si325808lfk.0.2020.06.22.08.49.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Jun 2020 08:49:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) client-ip=79.96.170.134;
Received: from 89-64-85-91.dynamic.chello.pl (89.64.85.91) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.415)
 id dd0acf60019f7936; Mon, 22 Jun 2020 17:49:53 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Len Brown <lenb@kernel.org>, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Kees Cook <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>, yuu ichii <byahu140@heisei.be>
Subject: Re: [PATCH] ACPI: sysfs: Fix pm_profile_attr type
Date: Mon, 22 Jun 2020 17:49:52 +0200
Message-ID: <6575630.DxmDRdjBXZ@kreacher>
In-Reply-To: <20200612045149.1837-1-natechancellor@gmail.com>
References: <20200612045149.1837-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rjw@rjwysocki.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as
 permitted sender) smtp.mailfrom=rjw@rjwysocki.net
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

On Friday, June 12, 2020 6:51:50 AM CEST Nathan Chancellor wrote:
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
>  
>  static ssize_t hotplug_enabled_show(struct kobject *kobj,
> 
> base-commit: b791d1bdf9212d944d749a5c7ff6febdba241771
> 

Applied as 5.8-rc material, thanks!




-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6575630.DxmDRdjBXZ%40kreacher.

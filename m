Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWOJRT3QKGQE3UGTXZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9BF1F7406
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 08:46:50 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id a4sf4472113qvl.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 23:46:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591944410; cv=pass;
        d=google.com; s=arc-20160816;
        b=GT4J2Stqg1aMV+EICVepBHrmypVqOGzLXUv3FqWTmjFM2TmGro0JtORjVZi15Yh7z7
         XXebgMGMCymc4147ZrqGF9Hmn7d2Q/s0iyphbGiQJj1ZkwljYybwTZpatonHi/lYUl8W
         w/eMLOh+BWAFqesDVmQX5ZWX19XuvFJE9VrDMf+rGJHn/PwUl/7n3bXH5CgLJxci3nud
         eVHMxuyHhazy+592N0xE4Fxjo7GBXomF/oxrofX1lHQlQNoat7mmMYDolOBrGgr5gD5d
         YA/Z0tdvjhf5tbSIONFV80ak499+6lmVt9YI2Mjq3NxJOk5MnOFuFCTcZtWXbfEGkfge
         91DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=+tPAhxLQFVUgwFC05q5gk/gp71u4mb9yvsxrDfID8aA=;
        b=YmLy5oplPzeubb+eUfNNT7BFvkD1L19oQFeDQuvQ9ZI893qC2ccthKR9viKEMFgBrL
         dPWQaGACvVePQ+3zzMBmG0RPW7f/9cL9KMrLNEHAZL2oDs/4gWbl+1YTOrLKPZj5l8Z8
         xTXfiookByVd48zmar0o7DeetV2pfa+h0CRtWynDPUwuAQ2q2FqJsqC3hCRlEG0iHDcY
         FemBrWt4pPpr6VTHN2mB5VLiAEoO0xXT6xc77hxUID3+ym+Mez8lfWsCHTf+C29jLt6/
         bW3j76vJU6gaXIKChbGg60wu3CJJywJdcSbwKbSZHBbBDbzo8OgSc6WldQXNH6iEkof4
         HQVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tgg4peML;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+tPAhxLQFVUgwFC05q5gk/gp71u4mb9yvsxrDfID8aA=;
        b=g99skKDsdBI0yYnzM/aFMNRvwPn9s1ghrG/rjzEGfpCnGQC1H6pZNx+KlS1dWLaiP/
         /jF99L+o9E1+XktzkPl/sIVOOdG039taROTUSD76lrurycW2sjBixtMxIGhtHLULTw3X
         KL1p1rUa9K8PSdzLqd0ugDrIJkAZN9LNc72hiBy7UNfCkX/LKseJvA5Q8/JskUPHX3p5
         OM6/n/TsydD/aX7AcNsNNS/OcqEEUKvYlYa38pVb90sJIcyZk/6ZK06DWcyTCLEKki7O
         QlB1pAOvSeuOkq1YbmDF8fPeEfSglF1Y8AbGMTtjwX4a6IY9nafmNliyDPiRlgHm5u3o
         XppQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+tPAhxLQFVUgwFC05q5gk/gp71u4mb9yvsxrDfID8aA=;
        b=jrZ6Cx1ooUeEDsQsHojzYjfpP2cYT8ocpkSijLAEylwnvOwlbXlrFynWjHSbum7kCc
         b11RdXzHMrs6aTc9W6k41EXgMGu/6dty3u9cEFFSnERXjpHsi/VC2nJNxnuT0WIJivFq
         j8YnL7nXEobThJbqswl+9cxLARvGGAqI7FX6nqbuxnttkW6joQsQqeqHQJaBYdQ/O6YP
         xOAEDbWA4GwFMKccy5DXuVddDgeoTBNGE+gNs22V5cmeYE2bMqocsqwQPZ0bJP4hbOoH
         zf9XzHrX/tvIQqpKx68fNuO2KwCJSBz1KBJoptoKstGCmz8D7KyqOUEsqFx9lBwdenUJ
         cfAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+tPAhxLQFVUgwFC05q5gk/gp71u4mb9yvsxrDfID8aA=;
        b=rHq/RrzRv3vEiaLLiMBRe2PNWtBqQA6gYHei8HSRXQtevimHBuCTsSQ+nmObEEtjkU
         WJWIqi8D6nfFuMyp7WY5r2ZqNtwGp9U9NTdvJ2SCK8wZixRI9c513+cFBJWqdetdNyKl
         CS6t2rOapLzS/PfcA5dZBUaJPXPyRoEjy08ZaZzk+iZAaki9CsGqe1sCbgIK1SUDQoz9
         V1aIw+TcB6+JOokMXH72neisEE4k5JjaCPSFzjkG96eH/5hkR6akY2S2HXRpKuscxMh1
         W/xjxyMC//AQGNTppa/GJKCy13QpCqyz3wkqxKQSvzjcTU6korzlH6shwq7+MG7stowx
         qxXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329i+jdaOywbRqrQnaYAkMZzmTdFU4UTdn/jCqrAK/VJiyPhGDI
	L1MokfcHteuBRHOyWfTFCzc=
X-Google-Smtp-Source: ABdhPJwxPmyCHovUMK2bhxwKJdLbd4SsDHBfko2xW7jb3XxlSrw6JNWl6DEzu3huFREmmurWfgkkGg==
X-Received: by 2002:ac8:2fb0:: with SMTP id l45mr1581780qta.260.1591944409993;
        Thu, 11 Jun 2020 23:46:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e92:: with SMTP id h140ls2245981qke.5.gmail; Thu, 11
 Jun 2020 23:46:49 -0700 (PDT)
X-Received: by 2002:a37:a147:: with SMTP id k68mr1573980qke.62.1591944409674;
        Thu, 11 Jun 2020 23:46:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591944409; cv=none;
        d=google.com; s=arc-20160816;
        b=KCj0Tuv6b891+7EGAiUZEOYfkHrlfBSjZyBaK4F+QN7HSuNWTc1GkaTucmT6aXXnrk
         5fCWjRy+Df1CvZ2peYV9VH3C6MHb+M02ewYzyX+WAQsa7RmkwUGsQUTJlphRZhBnaoB3
         M24XckrrjGCt05biny4HRr8EOQvj+Ea+Nh+5WND5JF3ODB8McZB74awfTlITQvEZ0ZMz
         pkHDr7NPIh3DNb2t6bJt2bbytpQtvCAMs59MlzQhQwYohmcW9l1c0STXzA0MwAg9wg63
         clJ/xDgIcLGzaH/QfPlxAOhWh6UyG2XkncA/ZPG1fl9T6w1ffuyzvFnATlWD87vqSMpa
         VoyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=293SJMmZmVCGOunUSuOi65UyFjlasgM11ygVhvjbjJQ=;
        b=j4gmDoYC5B1zDJsgUN0m7GGtofRRu7asrADFYUzkIIKV8/1b75KG2C4XY+TaboAkcN
         f91EcAa8/1ZYaKzeLQPYIrhIet7dManbsuZfrit0ir7JXitYf5eHI1jhCIUluHd/rIab
         QqbyoIkxcKekayZtcS39zUVpl/krLCS00YdNa02nQLxTN2k8deQpu6uqWnKKCjZiX7e2
         vL7Iz/t3P2riRJyBE13zx0k9ljUZXG0QFy+pJPZTqQXoh5PUkQKKAXxiR5OnofWQ4RU9
         L2/yGDzn0nz2QU54wHUjEITfne6CzR9h6oceUf49RTfO54ZhPWtV6NPHNWqv4kQVoRBO
         PUFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tgg4peML;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id p45si310873qtk.2.2020.06.11.23.46.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 23:46:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id k4so7800589oik.2
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 23:46:49 -0700 (PDT)
X-Received: by 2002:aca:438a:: with SMTP id q132mr623443oia.44.1591944408956;
        Thu, 11 Jun 2020 23:46:48 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id v2sm853810oib.26.2020.06.11.23.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 23:46:48 -0700 (PDT)
Date: Thu, 11 Jun 2020 23:46:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
	linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>,
	yuu ichii <byahu140@heisei.be>
Subject: Re: [PATCH] ACPI: sysfs: Fix pm_profile_attr type
Message-ID: <20200612064647.GA34712@ubuntu-n2-xlarge-x86>
References: <20200612045149.1837-1-natechancellor@gmail.com>
 <202006112217.2E6CE093@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006112217.2E6CE093@keescook>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Tgg4peML;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jun 11, 2020 at 11:17:14PM -0700, Kees Cook wrote:
> On Thu, Jun 11, 2020 at 09:51:50PM -0700, Nathan Chancellor wrote:
> > When running a kernel with Clang's Control Flow Integrity implemented,
> > there is a violation that happens when accessing
> > /sys/firmware/acpi/pm_profile:
> > 
> > $ cat /sys/firmware/acpi/pm_profile
> > 0
> > 
> > $ dmesg
> > ...
> > [   17.352564] ------------[ cut here ]------------
> > [   17.352568] CFI failure (target: acpi_show_profile+0x0/0x8):
> > [   17.352572] WARNING: CPU: 3 PID: 497 at kernel/cfi.c:29 __cfi_check_fail+0x33/0x40
> > [   17.352573] Modules linked in:
> > [   17.352575] CPU: 3 PID: 497 Comm: cat Tainted: G        W         5.7.0-microsoft-standard+ #1
> > [   17.352576] RIP: 0010:__cfi_check_fail+0x33/0x40
> > [   17.352577] Code: 48 c7 c7 50 b3 85 84 48 c7 c6 50 0a 4e 84 e8 a4 d8 60 00 85 c0 75 02 5b c3 48 c7 c7 dc 5e 49 84 48 89 de 31 c0 e8 7d 06 eb ff <0f> 0b 5b c3 00 00 cc cc 00 00 cc cc 00 85 f6 74 25 41 b9 ea ff ff
> > [   17.352577] RSP: 0018:ffffaa6dc3c53d30 EFLAGS: 00010246
> > [   17.352578] RAX: 331267e0c06cee00 RBX: ffffffff83d85890 RCX: ffffffff8483a6f8
> > [   17.352579] RDX: ffff9cceabbb37c0 RSI: 0000000000000082 RDI: ffffffff84bb9e1c
> > [   17.352579] RBP: ffffffff845b2bc8 R08: 0000000000000001 R09: ffff9cceabbba200
> > [   17.352579] R10: 000000000000019d R11: 0000000000000000 R12: ffff9cc947766f00
> > [   17.352580] R13: ffffffff83d6bd50 R14: ffff9ccc6fa80000 R15: ffffffff845bd328
> > [   17.352582] FS:  00007fdbc8d13580(0000) GS:ffff9cce91ac0000(0000) knlGS:0000000000000000
> > [   17.352582] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [   17.352583] CR2: 00007fdbc858e000 CR3: 00000005174d0000 CR4: 0000000000340ea0
> > [   17.352584] Call Trace:
> > [   17.352586]  ? rev_id_show+0x8/0x8
> > [   17.352587]  ? __cfi_check+0x45bac/0x4b640
> > [   17.352589]  ? kobj_attr_show+0x73/0x80
> > [   17.352590]  ? sysfs_kf_seq_show+0xc1/0x140
> > [   17.352592]  ? ext4_seq_options_show.cfi_jt+0x8/0x8
> > [   17.352593]  ? seq_read+0x180/0x600
> > [   17.352595]  ? sysfs_create_file_ns.cfi_jt+0x10/0x10
> > [   17.352596]  ? tlbflush_read_file+0x8/0x8
> > [   17.352597]  ? __vfs_read+0x6b/0x220
> > [   17.352598]  ? handle_mm_fault+0xa23/0x11b0
> > [   17.352599]  ? vfs_read+0xa2/0x130
> > [   17.352599]  ? ksys_read+0x6a/0xd0
> > [   17.352601]  ? __do_sys_getpgrp+0x8/0x8
> > [   17.352602]  ? do_syscall_64+0x72/0x120
> > [   17.352603]  ? entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > [   17.352604] ---[ end trace 7b1fa81dc897e419 ]---
> > 
> > When /sys/firmware/acpi/pm_profile is read, sysfs_kf_seq_show is called,
> > which in turn calls kobj_attr_show, which gets the ->show callback
> > member by calling container_of on attr (casting it to struct
> > kobj_attribute) then calls it.
> > 
> > There is a CFI violation because pm_profile_attr is of type
> > struct device_attribute but kobj_attr_show calls ->show expecting it
> > to be from struct kobj_attribute. CFI checking ensures that function
> > pointer types match when doing indirect calls. Fix pm_profile_attr to
> > be defined in terms of kobj_attribute so there is no violation or
> > mismatch.
> > 
> > Fixes: 362b646062b2 ("ACPI: Export FADT pm_profile integer value to userspace")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1051
> > Reported-by: yuu ichii <byahu140@heisei.be>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  drivers/acpi/sysfs.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/acpi/sysfs.c b/drivers/acpi/sysfs.c
> > index 3a89909b50a6..76c668c05fa0 100644
> > --- a/drivers/acpi/sysfs.c
> > +++ b/drivers/acpi/sysfs.c
> > @@ -938,13 +938,13 @@ static void __exit interrupt_stats_exit(void)
> >  }
> >  
> >  static ssize_t
> > -acpi_show_profile(struct device *dev, struct device_attribute *attr,
> > +acpi_show_profile(struct kobject *kobj, struct kobj_attribute *attr,
> >  		  char *buf)
> >  {
> >  	return sprintf(buf, "%d\n", acpi_gbl_FADT.preferred_profile);
> >  }
> >  
> > -static const struct device_attribute pm_profile_attr =
> > +static const struct kobj_attribute pm_profile_attr =
> >  	__ATTR(pm_profile, S_IRUGO, acpi_show_profile, NULL);
> 
> My mind absolutely rebelled at how this could not have been caught
> at compile time nor runtime already. Everything appears to be wrong
> here. It's a different structure, it's getting assigned, it's getting
> called! And then I went looking and started to scream. Apologies if this
> investigation is redundant to a thread I didn't see...

Yes, I was rather shocked as well... There was no prior discussion to
this patch, just something that was reported to me (the initial
reproducer was 'grep -irl uname /sys').

> First, __ATTR(), like most static initializer macros, is not typed.
> Normally this is okay because different structures have different
> members, so it wouldn't compile. But not in this case here. Everything
> assigned by __ATTR exists in both because ... they have an identical set
> of structure member names:
> 
> struct device_attribute {
>         struct attribute        attr;
>         ssize_t (*show)(struct device *dev, struct device_attribute *attr,
>                         char *buf);
>         ssize_t (*store)(struct device *dev, struct device_attribute *attr,
>                          const char *buf, size_t count);
> };
> 
> struct kobj_attribute {
>         struct attribute attr;
>         ssize_t (*show)(struct kobject *kobj, struct kobj_attribute *attr,
>                         char *buf);
>         ssize_t (*store)(struct kobject *kobj, struct kobj_attribute *attr,
>                          const char *buf, size_t count);
> };
> 
> But the show and store are different prototypes, so surely any variable
> assignments or argument passing would catch the mismatch. But no!
> The sysfs API only takes the .attr member address:
> 
>         result = sysfs_create_file(acpi_kobj, &pm_profile_attr.attr);
> 
> and, of course, that doesn't break because both struct device_attribute
> and struct kobj_attribute do, in fact, use the same structure for their
> .attr (struct attribute).
> 
> But here's the kicker:
> 
> static ssize_t kobj_attr_show(struct kobject *kobj, struct attribute *attr,
>                               char *buf)
> {
>         struct kobj_attribute *kattr;
>         ssize_t ret = -EIO;
> 
>         kattr = container_of(attr, struct kobj_attribute, attr);
>         if (kattr->show)
>                 ret = kattr->show(kobj, kattr, buf);
> 	...
> 
> A container_of() is used to calculate the offset. This doesn't explode
> (normally) at runtime because, as established, these structures have the
> same layout, so .show is in the same place.

Yes, this is all what I noticed as well (and tried to summarize in my
commit message, hopefully it made sense).

> Some thoughts that I am terrified to check or attempt, but I can't help
> myself:
> 
> 1) Is __ATTR() regularly used to perform cross-structure initialization?
> 
> Answer appears to be "yes":
> 
> include/linux/device.h: struct device_attribute dev_attr_##_name = __ATTR_WO(_name)
> include/linux/device/bus.h:     struct bus_attribute bus_attr_##_name = __ATTR_RW(_name)
> 
> 2) Should static initializer macros be typed to catch bad cross-type
>    assignments? (Which depends on "1" being "no".)
> 
> Changing this looks very hard, but it does make me wonder about doing
> stuff like this for static initializer macros:
> 
> -#define __ATTR(_name, _mode, _show, _store) { \
> +#define __ATTR(_name, _mode, _show, _store) (struct kobject *) { \
> 
> Obviously not possible here, though.
> 
> 3) This cannot possibly be the only case of this. Given the answer to
>    #1, this bug must be endemic.
> 
> static inline int __must_check sysfs_create_file(struct kobject *kobj,
>                                                  const struct attribute *attr)
> {
>         return sysfs_create_file_ns(kobj, attr, NULL);
> }
> 
> $ git grep 'sysfs_create_file.*, &.*\.attr' | wc -l
> 51
> 
> 16 appear to actually be kobj_attribute. Those are fine.
> 
> Similar to the patch above, 9 more are from DEVICE_ATTR() (named
> "dev_attr_$foo):
> 
> #define DEVICE_ATTR(_name, _mode, _show, _store) \
>         struct device_attribute dev_attr_##_name = __ATTR(_name, _mode, _show, _store)
> 
> And a here are a bunch more macro-based ones:
> 
> class_attr	is struct class_attribute
> 
> mdev_type_attr	is struct mdev_type_attribute
> 
> format_attr	is half struct device_attribute and half struct kobj_attribute:
> 
> arch/x86/events/amd/uncore.c:static struct device_attribute format_attr_##_dev##_name = __ATTR_RO(_dev);
> arch/x86/events/intel/cstate.c:static struct kobj_attribute format_attr_##_var =                \
> arch/x86/events/intel/uncore.h:static struct kobj_attribute format_attr_##_var =                   \
> arch/x86/events/rapl.c:static struct kobj_attribute format_attr_##_var = \
> drivers/perf/thunderx2_pmu.c:static struct device_attribute format_attr_##_var =                   \
> include/linux/perf_event.h:static struct device_attribute format_attr_##_name = __ATTR_RO(_name)
> 
> These 2 are also not kobj_attribute:
> 
> include/linux/module.h:extern struct module_attribute module_uevent;
> kernel/module.c:struct module_attribute module_uevent =
> 
> I think all of these non-kobj_attribute cases will trip CFI too, and
> this design pattern appears to be intentional. So that will be fun! :)
> 
> I haven't gone through all of the 51 carefully, but this looks like a
> much larger problem than just this one place. :(

Yikes... :/ that is going to be fun to fully uncover. I am interested in
seeing which ones I can get to trigger on real hardware.

Thanks for the full analysis, I should have probably added some more
myself.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200612064647.GA34712%40ubuntu-n2-xlarge-x86.

Return-Path: <clang-built-linux+bncBDXO746SYYBRBBMY4X6QKGQETGITBPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B44D2BC0F1
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 18:19:03 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id x85sf10970732qka.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 09:19:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605979142; cv=pass;
        d=google.com; s=arc-20160816;
        b=un/QBKTDvpe3wg3FzcNyWQ6q1wBSybFuE67BV1fX6lfB2a6l+GOjLM4pNVaFmVZoLL
         mw1Dh+FBwKz5+uzOzwnCD/4355d6CB5o1IcgFHxIaz8+5UVvfF81w+tdOGyk8aqI5VAY
         fEhyo1sV+NYoeP91sjmQrQ+Kc9vcaL8p9uzCpqdwHtkG+3OtJLBJu4VWZrLgeJYh46Zv
         M8dgbS9daH7Nt2iSGhBSZ7/kJafRaWlnOZGTBMfnMqhamryCIlj5xa/pM1q7SZ3D/F5s
         9ind+6R/0FpLDmsdHfCBQjV0X1iJtSZcxSS6Uy+pA6Hz3LAwTlX6Rm6nTSW1oVnBc68j
         EFAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=y14WU1GJTPZtLVqucNhM0D8li1ToM9l1JMgkk3kxjDs=;
        b=MQ4oLCtd5WmZCYItChLVdB5bQyNGwsKfaC4P76HgL/GqAl3C3TotRB2H65hOvmoFN9
         C2Xx3uEGDiqPsL6VzQLenFFrxSSgJy1jfFa9NgCuXHTdJYs+7UXR8wlCbOLSmEe2Jr8g
         HOHCoFd2vetvfjfuQVZ5LJDXuwKFnvEZ/oyU96BvWuosPqsCnTabH+No7Zry/80MaBOo
         lL1sfetiYVfqWxuLwrr5OpMxXQ+I4YVCOBcwrpjMLe8oO6S3k3Obe2M25yqxh+ZQKFbr
         f02veSIy94qS8f+w+qf+LWgYTgy0HI6IJD+ycU02n+4iR3bBkCdXEle+C1y2VOvwRLki
         ycMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Lvt0xf0A;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b="qZT/78tS";
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y14WU1GJTPZtLVqucNhM0D8li1ToM9l1JMgkk3kxjDs=;
        b=WmODYbHfW4I0Os0iBd61IAzAHR5nbxN4M/CUfdQhYAqujhNpz1c2doEdhYuQa3AKu6
         cZfOzHz1hhd4UNiZ+vgVAslDialbnokd0lO8TFkDVQZw5CbA+mSzR7bN2aMqZQU6pa1+
         vHZlOIg0t6V0iddlvh7+taZZFLUxIrTXTRw9Wn5Mw7yDxmjyPg7C2DJwinB12vlZxe7i
         h3Q8oqZUCt8fGew2whk62IMqeDLRRCUBs34ANXG4QVt47soI2EawDUQLezFzLWIt7uv3
         cr3pOoERh95XwvHiSEVB1COMvRLUmxZAOPXP0TM2oy8l0CZpf08ogRw/WywBtmfrDY/l
         cwEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y14WU1GJTPZtLVqucNhM0D8li1ToM9l1JMgkk3kxjDs=;
        b=jf+eGY3XciAGLWZ2QEJkdVaU7ZRecVUPTUfN5owAB97t8z7gxowW+2GJNrxw2W8Kli
         /qO+jbZUSjD0F99QJ1vwgViukS2iPmJ/WZykrCTGGfQSLYpeuKD3ZzB5uox6tr02Funi
         AKCEj3MK/jxhxcC3Ozn9uPfIigVvFIVaV7m8OyTwBlJRLxRGXX+4K7zBWzdhrCj28H06
         sMc0wyj+UsdnHQ47nSf+FKwZ65YpuFf5xpv3SNsZkdZsRqAHbZ+ecY1MW85UvvYbrZrE
         2/ZgkLpHSgiQpHPTjKh5/z/rch9JodgJkczkGaCt46C6eQ6BZZCBVtUHyhAQC1kytLMF
         PD5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532R4JGgmL3iYUmwYprjvI2wTPzYclBX5QFWrgeGWeDM6oX4d1F+
	U26uQ1vtJlZbS3l1oRqTsvc=
X-Google-Smtp-Source: ABdhPJxCAy7yk/E3Fc5fxm7+5xNdJEecHErZYcGOd6+qdHxwpZxmWXmFv7U7kl28rmocmjttPtrdOA==
X-Received: by 2002:a05:620a:98a:: with SMTP id x10mr22733758qkx.259.1605979142032;
        Sat, 21 Nov 2020 09:19:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d607:: with SMTP id c7ls2258029qvj.4.gmail; Sat, 21 Nov
 2020 09:19:01 -0800 (PST)
X-Received: by 2002:a0c:f7cc:: with SMTP id f12mr911042qvo.0.1605979141702;
        Sat, 21 Nov 2020 09:19:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605979141; cv=none;
        d=google.com; s=arc-20160816;
        b=ZREyMjjnXpiflrX8DrB5ghF8RvcmOfvGvtW/a3DEnm/N3POvWueaqxcL3jadfC6Tuu
         LYW5UD4W48+j4+odLi/npVubp0NDvlUfif4fk+EBV86Yl+AiwhuMh7gIqSAf3F5FysVb
         KSwvEqO7rPSMHwk4F0BkP/aiXSreS4ZYL2ZHJY3SHS/TmtVf5RpzYXGc9GqrL4PMwx74
         ADkRoiUnoyVn7HAZIxNAi83nbkuiCv/DlgQ/Xz6l2ea7RcplR1CkztoZDTv9BNP4vCYj
         UEb28PXUYU+m3522ryQWaLdtIxttLeNSa5Xqmsapsj0Xg4L3DtrIpgxUuq/9p86UkfJl
         LfqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=gT5e+xNd7bG60K4DvKMXPz1cXKLgUfMe3H3t5Er79nI=;
        b=rKl1L7DEh+oLPZs1/RQk+fWIkpykVbpiJdQRVs87yGa+rcmSz4FVTPYk9F2OWFRG7d
         jAi2WnuJcQz+S85dSNSzvuPlBmSf8ZGB1WD2JfUXtj3S9Hj8+bnWIZhCSAKr8cbGRemO
         HgootxcGqgOT5Rjp8EeavXam5EHJtYIbm5wqfRlkP7Mi3B9XOTVvDSXmXcysGEpT1eQn
         DGlXSsiQs3t6lNmw1k0rsbq1deLopZavZgiy6Ry+CtWUv7IIDeMEGhE9Mrr449NwL0lE
         Lpql/FwhbV3RZAPRu5wH93bP6IyXy1tHrrO17JuTUXGsFCNb9DLBzJbngG8jNBOWyuqh
         DzVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Lvt0xf0A;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b="qZT/78tS";
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by gmr-mx.google.com with ESMTPS id e9si386586qts.0.2020.11.21.09.19.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Nov 2020 09:19:01 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 2C7E2128048D;
	Sat, 21 Nov 2020 09:19:00 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dA_Y3gfv-HlR; Sat, 21 Nov 2020 09:19:00 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 584A71280481;
	Sat, 21 Nov 2020 09:18:58 -0800 (PST)
Message-ID: <5843ef910b0e86c00d9c0143dec20f93823b016b.camel@HansenPartnership.com>
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: trix@redhat.com, joe@perches.com, clang-built-linux@googlegroups.com
Cc: linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org, 
 xen-devel@lists.xenproject.org, tboot-devel@lists.sourceforge.net, 
 kvm@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-acpi@vger.kernel.org,  devel@acpica.org,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org, 
 linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com, 
 linux-scsi@vger.kernel.org, linux-wireless@vger.kernel.org, 
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-omap@vger.kernel.org, 
 linux-fbdev@vger.kernel.org, ecryptfs@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, cluster-devel@redhat.com, 
 linux-mtd@lists.infradead.org, keyrings@vger.kernel.org, 
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
 alsa-devel@alsa-project.org, bpf@vger.kernel.org, 
 linux-bluetooth@vger.kernel.org, linux-nfs@vger.kernel.org, 
 patches@opensource.cirrus.com
Date: Sat, 21 Nov 2020 09:18:57 -0800
In-Reply-To: <20201121165058.1644182-1-trix@redhat.com>
References: <20201121165058.1644182-1-trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=Lvt0xf0A;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b="qZT/78tS";       spf=pass (google.com: domain of
 james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as
 permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Sat, 2020-11-21 at 08:50 -0800, trix@redhat.com wrote:
> A difficult part of automating commits is composing the subsystem
> preamble in the commit log.  For the ongoing effort of a fixer
> producing
> one or two fixes a release the use of 'treewide:' does not seem
> appropriate.
> 
> It would be better if the normal prefix was used.  Unfortunately
> normal is
> not consistent across the tree.
> 
> 
> 	D: Commit subsystem prefix
> 
> ex/ for FPGA DFL DRIVERS
> 
> 	D: fpga: dfl:
> 

I've got to bet this is going to cause more issues than it solves. 
SCSI uses scsi: <driver>: for drivers but not every driver has a
MAINTAINERS entry.  We use either scsi: or scsi: core: for mid layer
things, but we're not consistent.  Block uses blk-<something>: for all
of it's stuff but almost no <somtehing>s have a MAINTAINERS entry.  So
the next thing you're going to cause is an explosion of suggested
MAINTAINERs entries.

Has anyone actually complained about treewide:?

James


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5843ef910b0e86c00d9c0143dec20f93823b016b.camel%40HansenPartnership.com.

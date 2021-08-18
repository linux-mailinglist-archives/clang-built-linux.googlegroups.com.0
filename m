Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBFVJ6WEAMGQERVQKK5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id A01A23F0B2B
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 20:42:31 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id h39-20020a0565123ca7b02903ba26e9bc4csf897498lfv.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 11:42:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629312151; cv=pass;
        d=google.com; s=arc-20160816;
        b=OVDtgBQHGQJ1Uqz/EK4CdJvdArHVV1yuPppKW6GPyB9FyTGPxSCOHdmYTvOQnQQatU
         hVxM2np5+VZdC+ST4uZ/xzFCynI03DYHxYGP6d8y4BQqIhhvB+KuY1tHdYcgfYOIWLoW
         k5dqXF55NVc9NmVxn4sLuTigEVjWEC+CGWxTSV1NS5whsYn8q3nXhaALFhkI4zR6j0bk
         UMDOzzeSPQswv2zGFCbLc9wudZwnnDYcmU4CIq49LCm3Z+2H8HBx/YbczuBfsG+hAIpR
         YAj30VBFtRuBca/Wms/TedaaX/TuTbaPNAjccntYHwtnmTAB+OO5ufVg0rG2aGfzXa3m
         iflw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jf4c8wTYT2p9vvjgaf8v4/3iR9noyr4hPVj5ml7DYTk=;
        b=owa6cfhE7bU5PgI7WURgCrCcqYI5Ml9byPpK4F7O53y7dMyDF75jKWT1lea+An5Mz3
         LaHo+v+mhxDjmhHXzWOhmnlWMlscxfAl/aUhTqyM7Efnjk+4MfJ72hzl6AKFH7fsj0gv
         mjQcLyxuX/5bYRGiGLBZf/7PDr5lWOC91dlBPr6UZBiXFOseuZfxbvuzat6CRFSME2IX
         deWX7MPdiA4ZMSXrbpxcmdUXzE/Rljc15Ze8Kq571mWzuuhG7IvOQg5n5y0vo0IPsDsH
         OnHSgXn93o8pMm/1CSSH0x/lVckkoaZX3k8/qnoX9SPGgfxN5FYU6iZ5guVioln1p7vV
         a1zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=IFfP6Vv1;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jf4c8wTYT2p9vvjgaf8v4/3iR9noyr4hPVj5ml7DYTk=;
        b=J6Tz284TfB46LFO2FxGJa2z9XTHfePbJhHiNnuI4r3YpIiLZcoAzk9dAoOklnFSTy8
         kHvvHYrJSPruwnJ2BfTHS3w8k4yDPCN+TQ/s99LkXahpKHIBXRsY/yMNSU0fYj5blg+b
         529huz6rjjLaLSBtwWk3XpWFc/vf0+LrfjrsQ+7Z8twJDVkIj2YyrrIeNh0eynDQvb6+
         9ssUpj4tju4fKUYSAn/zwkNoCLmhCzKenwmkBvIFZfeUEu0TQ1cHsSJ6oRgl5IaUKjic
         y56+iEZ8SIyFUuKMSVqDlnhNdGn1lN5P5XLIh28iV92aPPM9FZ/iZiMMttIwZQpQiYes
         f+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jf4c8wTYT2p9vvjgaf8v4/3iR9noyr4hPVj5ml7DYTk=;
        b=KW8yP+cxzuS87296kfLaSu0m/wH16d8XGbHQQIBkDSFU3EKwRz1mwNAemPB3BCEf2l
         Qq9eGCeJYQpzAGMuIxaowRaS1jBBbn+dLjaWGiHMNm6BoslsXeaxRB0/f098gJhSvB6c
         E1K32Cp83tCChVYvX3Es9ZHiWXEkB3rSeGJg3yYiFNIzH8c/XfUSBZmIT4gOV8SPP0g/
         OEVCwB8TmPI+lRhm5yiW1EnFuH6+jAGNpVPKWlfxsoUK80XqMgYeTZcotMPnU4IfUMSU
         SAJQeaecoQn8v83t8dxfluAz5lhVcCK5KPPQ6vQVXhIi5+F6e/eQxmkJC9jPRV3C7XeL
         j3TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306sMU8t0hotAgXGDtZ55PIHz+q7uLBmLsRR4L2BPFgqY46WNKs
	1EzwMX71vYRA09o6UZVXbqI=
X-Google-Smtp-Source: ABdhPJxQf0zclbLhS4BjNobdGsGDgnlaT/qzP8wvtiwb3CeoAkmeWKVCpxc2fDd4Dxb4pbt2T7wBZA==
X-Received: by 2002:a2e:b0f6:: with SMTP id h22mr9238718ljl.336.1629312151209;
        Wed, 18 Aug 2021 11:42:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls605964ljf.7.gmail; Wed, 18 Aug
 2021 11:42:30 -0700 (PDT)
X-Received: by 2002:a2e:58c:: with SMTP id 134mr5797126ljf.269.1629312150193;
        Wed, 18 Aug 2021 11:42:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629312150; cv=none;
        d=google.com; s=arc-20160816;
        b=LClK3edP3r0mBAppOQxfBzmt2hDvvzTsJqxll1tj5ycD/t4jR2bIxE91SNasNMXg9b
         Kx7ZQy6usgLwqtyCcmEFyVIiDRth7kGyQk23MlXOx+gXuzGJkvRjX7XPp0F/bR3/nVaU
         cnIDpIEDLYFl2CzPDIdPJ3uCZ5az58Un5xvPOwu62bTT5BdBhHQgqh58IgOyU+LtBgfZ
         LUmQC4gt0eJAVuAB6tLInKmwAhkoRRhM/wClSfdNBIPdTqUCgqUAMz+1ohL7jnivRITA
         lyGOrccQpRmCUDfJW0vCWWeWS74YS6oxcWI9kbaGZChnmvsDdp/bTJzkoFXxELQP7Tz5
         pPOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DNHh5O90xMiN10/O0h49EwPp7W2Ntgkh4B00NNWxBBk=;
        b=CNyYH9a6aDmm3mUveCfoDU//ranKSlSk9cwUhQ45E0glqug6o50sIIJnAWuYrWImC3
         pRvXyZTrekZG28nOYOSqn0ukONebwTNZKKbcbMHqMFeOS4LcHazp0Z3te4pCI+iMDt/e
         VEl729vujSXkjCZeaZURbB+GPJQjOHIokK/F9ePBRN6tmh+pULk6vnsG3XR90YTmTiAp
         7+38qkJ3WxEBY9k3adteJ08drr0Sqb0ITNVZg9kaUj3VLDEUN1yn/49BDfFCZa80y53X
         Q2gKDvS1NeAcSY3LpL8jO8pvWlH5msWZv/9X0oVFXZVRWKfy2/b7P749dwyOol7bKpnX
         +Gsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=IFfP6Vv1;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id h8si38258lfu.0.2021.08.18.11.42.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 11:42:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0cc30025743e574fa309df.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:c300:2574:3e57:4fa3:9df])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 4CF5F1EC0541;
	Wed, 18 Aug 2021 20:42:25 +0200 (CEST)
Date: Wed, 18 Aug 2021 20:43:04 +0200
From: Borislav Petkov <bp@alien8.de>
To: Tor Vic <torvic9@mailbox.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"graysky@archlinux.us" <graysky@archlinux.us>,
	"masahiroy@kernel.org" <masahiroy@kernel.org>,
	Christoph Hellwig <hch@infradead.org>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
Message-ID: <YR1UuJM0GumaTIi2@zn.tnic>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org>
 <YRwBs89eogLJEiRn@zn.tnic>
 <1708009975.124311.1629299321026@office.mailbox.org>
 <YR1KDD/azm1IDr9u@zn.tnic>
 <25f1e81a-84f7-e63c-2989-cd4fddd695e7@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <25f1e81a-84f7-e63c-2989-cd4fddd695e7@mailbox.org>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=IFfP6Vv1;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Aug 18, 2021 at 06:28:47PM +0000, Tor Vic wrote:
> That's something I'd like to help with, hence my (not very good)
> submissions. You're one of the kernel colonels, so I'm happy to get
> some *useful* feedback which enables noobs like me to get a better
> understanding of the kernel stuff.

Sure, Greg so happens to have written a reply recently explaining what
to do:

https://lists.kernelnewbies.org/pipermail/kernelnewbies/2017-April/017765.html

Thx Greg!

In addition to the above, I'd suggest reading lkml, reading other
people's patches, review of those patches by people and trying to
understand what they're talking about. And then following through the
code to try to see it.

What also really helps is setting up a kvm guest, booting the kernel
with it and adding printks here and there and dumping interesting
information with them.

Once you start dealing with this, you might spend a couple of decades
figuring it all out in full depth. :-)

Oh, and this https://www.kernel.org/doc/html/latest

has all of the kernel's documentation formatted nicely.

I sincerely hope that helps a bit.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YR1UuJM0GumaTIi2%40zn.tnic.

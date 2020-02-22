Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6G6YXZAKGQEDKI5YSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BFE16912B
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 19:14:17 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id c7sf5255869ioq.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 10:14:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582395257; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oyx7UbvORve4PQGQavdIJn7r2/+iAGFNCRHA0Exwx3M1nh390KLpp4CI8aYO9wGGRk
         +ECHseCR5u1dPnkximKElL7s7D1kB7pz3L3wwkRaDjxnpnQSsGpy7sEzgpBe4fgSbpgG
         x74uQ09ERPv00MLeJLTEe1m9l3eD88MrBt5LrMNI3MuQFlGtbnN/c5FbyZQPjANzVVmn
         BxOnfT5P7wqVwVFigNefPaUZ0jQPE286fzrAiGOw4li2S+spkUOVEsdZxbtxEFhBdXU6
         cEsyh/4ZmXutUHQ3+bOteIbz+hisVcs3Lgtspd27T4pB97P8UQcf77WjSP0Fc7s/I90R
         rf/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=AvLI8RppbH1BOi/YLs29cnqlG09OYV5tvLUWx/iEYGA=;
        b=Np3v9RU8/IQloelpxfpDC37cXDEA227GgAPRqY76vY+8gYA9JBWXhhl2KBWufK8IMg
         TuTHePZ3KYrNNE6M3hZDiNVGRXyHiiXING2kpCEyHTr2PoOtIoim4Yb9Wz9yigM3NU48
         YAXzkrcpLWpeSdIVyEHQkA7JlFYiaEu2tLxVTaGUofLMPz2VIn98EI4/fBuwTSsJ7yOA
         rBWpFuw8eKVk8sNgXVtZ2mCAPbGUauEebvSMfe9PrpUPF6EKjZKLh/QVIlT09St58rhj
         3Czma2WgKCO6lsIKuguzfAfT9oXYzWmFDy9PkpDEoH8sUTzO/ODCvz9FuQZiT4dbMCS+
         r9YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HQuGNfVd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AvLI8RppbH1BOi/YLs29cnqlG09OYV5tvLUWx/iEYGA=;
        b=I4xmo8QDBs/VrYxSQcvyP5YUAKNETDtmxcwbDSxfenNILN650l3R0z3rKpXQoeLOKE
         MxIP4ZvpMtu1/Gwq97ivWbm/ek7iTc9Iltv7VRr1js7xa6tNtMw156kTDA5Wn+FgWXrB
         VQhJVIDIVL8g2b9vTT7DtD/oPOu2Qidme8Lqk3wunHi8NMJy4xgeKxSOG7t/ex28g9/M
         Mud7HFa7QuPeHNOMKG6JeWBd7b2z83AnYsS/V/nR302+Yyv2eMTpuhSRW1wkyujOBsbS
         kaVf9agvkvWPPCjDKcDUUbCYpJXhFWHGsRQ4d9u2K+8bjiq1AE1yLXS0bvCcECcMcnun
         p/Ng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AvLI8RppbH1BOi/YLs29cnqlG09OYV5tvLUWx/iEYGA=;
        b=fzXuC/K1ewPcnxx2rDz3NU1EF0wltDGlY/+a4ip1O3DmJNNGZGt/yB3KBdBpV9N7X/
         cDs0nJMAf6ByOTzQg72jYnu0ol5DA+vNHe8em5LN6fRbHc4wmB/o1EvmTaIu1nyR+VNq
         qFYXj/5TexuYiM7znt/cSJV1hXpBrVbuz91nNN+Tv79rQqmMIkTVD5OEnkE6HrL+ER76
         9aAFQnj5zqQpInWSblDlc52WwrEcXEgnXZJO2UkT741ajd8Ew8oz8jl3SS93ECync8I+
         WfLs6RW65Lh+4NKNSbri/pEr025qFiAH7WHmOsRsm9pH2egx75JrZpYVvwrFAQpSn9C/
         pvCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AvLI8RppbH1BOi/YLs29cnqlG09OYV5tvLUWx/iEYGA=;
        b=Z1zBoNQy6/QNMOYt4pwNR+YRUatU2T/Lc28CvvJtRrFt3vaE314ZaO82HKOHaQRL37
         eZraXR20HbARnYDjBHrQmmjKAcIgbM/WpxYy9TdJyHyv1oBbB4yQ3xRv0DR4ObL/RvgF
         4cbWk+YTcUEVfewjfT6w1IJ49hcD/SxnDWpPDtasQtZQNn1Hi36oT1awrr6/+DTSzZB+
         4RyI4DSCaeWphwU4JeZ0kJb0kIppnXn/YulIlbm2WGprylJ1wxiNlzK6F0XetLmLux14
         aTkHYJUxCm5DvTuut1igFEq8ViSjmaWEd3Bc0rEf8jwcs9LqEST7x/4e910I0L7d0I4B
         wJdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXsIvjmbvcwbighzQ34ew4FjIYfWoOW+R57cddZowoo4VEgCs0r
	p7pQJ2h/rkY7KWN5UYevys0=
X-Google-Smtp-Source: APXvYqxy42PhDaxTvzoU6J0k5caQZaapmrTA8ZaWs35ySTwZeTJLGgNP6ce+ayhdUR3OojBJlCV1rQ==
X-Received: by 2002:a02:c942:: with SMTP id u2mr41463304jao.49.1582395256768;
        Sat, 22 Feb 2020 10:14:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9057:: with SMTP id v23ls1049070ioq.5.gmail; Sat, 22 Feb
 2020 10:14:16 -0800 (PST)
X-Received: by 2002:a5d:9c88:: with SMTP id p8mr40311571iop.9.1582395256346;
        Sat, 22 Feb 2020 10:14:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582395256; cv=none;
        d=google.com; s=arc-20160816;
        b=CAyiKP64od1SvfZPypt1S22hdkH4qv6WSAhwe0OBE5sb/gM5HxfTBZAVS1DikRPEnA
         Im7bupab16UdjcOh+esTqzNx91leMuewDXRODbI8HGAZfzyJ0rYV+pWJsmUQpRVx7XPV
         s1lIDh+UZPejCYlKmkRny9doKAGC/1ZQHoxXhA9XK4ynjC6qzAxmeZMF8uqhAnOLN4gv
         g+xZDJKv4NAeKR1HWjIFYIJbG2DR0jK//vilFY31A9TdYSjHj2nSBB5T8mRC+9TSFvnI
         3dlwZqLLqg7BoFy9IQD0xG+bR1iH/NwZ8LxOSRlmgkG5bqc/cjQkLmKVxP0g7/CN1OJ2
         24Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8hX/FaRljJV5KsRO4w2p+JOJK5twqcG/ZN1GiH8f9cg=;
        b=rWS8Os9DpnkW4ZQAZ617Nh+TLkCcSzMT8eJi9kCa2anY00501vyAMRP6KTh5S7bZZ+
         Ad1lGAUqGbH/pUxiZkZFUQUJAGfGgEpveIyQOx1ap0dkCBDGd/stHmGR6v8kVapH58aN
         kgIyF61OCZ348VePIojPbMOvCJAoWTtlVx/OMz3V0wz5O74DLnjcjsluuEviHYvyXxZI
         genSaWPubl8SX/R5Uk8ozJP3Ir5OzoiHQnztTrkTDQEscIdsQPQ9hvrTB0yvvROIZ6+G
         U75HukDog6L19z7bE0XnxbrHn/m1tWUhVNnszfdWUHutq3tRC8oIb9VX9qrPve0s2vFf
         Vo/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HQuGNfVd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id h4si496308ilf.3.2020.02.22.10.14.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 10:14:16 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id a22so5005649oid.13
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 10:14:16 -0800 (PST)
X-Received: by 2002:a05:6808:7dd:: with SMTP id f29mr7135326oij.67.1582395255944;
        Sat, 22 Feb 2020 10:14:15 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id p65sm2231612oif.47.2020.02.22.10.14.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 22 Feb 2020 10:14:15 -0800 (PST)
Date: Sat, 22 Feb 2020 11:14:13 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Fangrui Song <maskray@google.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH] x86/boot/compressed: Fix compressed kernel linking with
 lld
Message-ID: <20200222181413.GA22627@ubuntu-m2-xlarge-x86>
References: <20200222164419.GB3326744@rani.riverdale.lan>
 <20200222171859.3594058-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222171859.3594058-1-nivedita@alum.mit.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HQuGNfVd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Feb 22, 2020 at 12:18:59PM -0500, Arvind Sankar wrote:
> Commit TBD ("x86/boot/compressed: Remove unnecessary sections from
> bzImage") discarded unnecessary sections with *(*). While this works
> fine with the bfd linker, lld tries to also discard essential sections
> like .shstrtab, .symtab and .strtab, which results in the link failing
> since .shstrtab is required by the ELF specification. .symtab and
> .strtab are also necessary to generate the zoffset.h file for the
> bzImage header.
> 
> Since the only sizeable section that can be discarded is .eh_frame,
> restrict the discard to only .eh_frame to be safe.
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> ---
> Sending as a fix on top of tip/x86/boot.
> 
>  arch/x86/boot/compressed/vmlinux.lds.S | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index 12a20603d92e..469dcf800a2c 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -74,8 +74,8 @@ SECTIONS
>  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
>  	_end = .;
>  
> -	/* Discard all remaining sections */
> +	/* Discard .eh_frame to save some space */
>  	/DISCARD/ : {
> -		*(*)
> +		*(.eh_frame)
>  	}
>  }
> -- 
> 2.24.1
> 

FWIW:

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222181413.GA22627%40ubuntu-m2-xlarge-x86.

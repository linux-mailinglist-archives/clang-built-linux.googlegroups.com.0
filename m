Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBCNXYPZAKGQERKAWZAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 00125168D4B
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 08:43:05 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id t20sf3173188eds.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 23:43:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582357385; cv=pass;
        d=google.com; s=arc-20160816;
        b=zcjndwrEnukRZJEq8V6hEDP48kgGsdgAZfpWR5SLew+7urBI8QwI+pnx9cO0myeNUA
         IiTaFjPOAYeSezzjfXuJKvT1beHdPSTNUHo+9lmgP5H2xkeGVC8W/4eFlS2hvptzApbJ
         gzUrTNFYfGfYJjdKl1YCXbLSLzxMmGtypIsa29mrRKBAAaAXSAhZ7Z0MYZVx5Reb9NlV
         mcedXSRZqMRBM3+jxvXmYUlBxXELC9i1N/JI8GifzQ7sdx5gF9bsU0m4scuSEczETWoZ
         5MJLTfbyhUBbX90g3m7d9ziyk9u/Ql/ijaFCxf7NW6gX0tyHm1xnecm1/8VLNiuhfyeD
         8IOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=twsCshgKM6CgQ9ga2oswrLR1o/HJi7e8F01iI1oo9Kc=;
        b=CqBhe4X9S5s7kU9Hemz7dhwmgHWX7llhmpu/vNAAyI+RGv+8HzKnv5mPuCFDbT4A5E
         e6h4lexzCqSOSRx7zTlQWZC29MOTyvNG3hLZhymbskx+GiNTio+VqH5bUBn8roDjx7Q/
         FtPrMrAuqY2WAELk9kE3rL0id9PuzlcgaaPDoo4hO/n6aflazwmAmRV9ULekZwCPcrFl
         t06Z3VZCF9/G3NzuRvPmSC8b0XtV3eciATYcnUgdPKArvrl50R3rENuem0go/Ig7x+E7
         nXgx7pDrGyjyv7Sl9Zt8IClhYGa/6H/d4tRaMQPZO/B6sfag42swAXziLGlFE6HEbbNV
         QAiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Oe6C3Dxu;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=twsCshgKM6CgQ9ga2oswrLR1o/HJi7e8F01iI1oo9Kc=;
        b=W1BUxtRLMna0jK4z6HAW56YV4q/Q4c0hTFqocIl8No3li+IllgwPPCEp4UV1PX5YUs
         3u8RI8S4+i5N6Xvb0kxzBq5AibOVwq/+99rbPRM4NanEb2RBHA8Gt2zE7Ni7NLYA9DOY
         Xttzyz3CCV1IknNtW37U/JsTzmgE46FCFyBGzxhq8k2qS+BuX9q3mGpcKOhJ25Qmo0PE
         /m5wztRz1aNS+kqcFZtlDka50YAwEJTy8isIKz4RnGWFfWYRz2FE59dRzAw9+5ouEFpv
         BlFyCMX3oqco+BpYGRwmQCgZv3EohjmZ9fFyn4xpfe1XVc9TYJQbvJBZlaNbYCZ0RVEC
         9dng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=twsCshgKM6CgQ9ga2oswrLR1o/HJi7e8F01iI1oo9Kc=;
        b=HtqVu9fFV9v13O7JtAH84MpwSbdDk3qQ4WPNVPTAplyQIEsADefQ6YSDsf/JSPiQwV
         Xi4EFsHVZI5pHtAOegZV1JnkVKHNdw57GeMCN/j29onLbUmuEAQY3V0Xaczwb/GolTQ/
         4SztzDP0AYVYC+wKMechzjO3I0nWyQCdseDG4zDlCyfxfs99ndroBKnnEdXsB4q39UkU
         1aI4KcYM1/IqpzG0MCc9vLAtuPKf8l5kej0gH6NQLcR/ci/59V1Hq3uwEc8MklQrblkA
         LJ8xfFf0kLshokQmJp86lfp9acH5wNTH+z34k6jlUPB1UFAdvlUpoBTPKuJCEhBExTNm
         ZBVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWi3M/gZfVt/P8I9s3XcwNt757WZzz6JoA2yGCDiOyJFFavHsCt
	XAczWJaGjWoiRZsZ6IV8PBg=
X-Google-Smtp-Source: APXvYqx+JnHfSaclQCrYrfGL0fWJaxFX0MEyKkzJr1qQsZ1MlJp9ki5lW6D/mS0gnN3jiTd8PzfCFg==
X-Received: by 2002:a50:8ad3:: with SMTP id k19mr37991627edk.224.1582357385657;
        Fri, 21 Feb 2020 23:43:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8597:: with SMTP id v23ls1873697ejx.6.gmail; Fri, 21
 Feb 2020 23:43:05 -0800 (PST)
X-Received: by 2002:a17:906:4bd1:: with SMTP id x17mr38430364ejv.181.1582357385065;
        Fri, 21 Feb 2020 23:43:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582357385; cv=none;
        d=google.com; s=arc-20160816;
        b=M8UgEhs8V6y39c3ZA4SOf0SuB+nwy8n2B0B0rlxMAa9SswhVVEnuhusMAuieDN4LBn
         KIyrAtyUYgjcEta+bVW1Hnu3wPZj0uDQ5tDm7ERJLmGrHjUx72u6uKPsW6ITL+/U1MUJ
         N/cMzUGcddLpUWRLZqmESmsfr7JuLUYJsH3XgonFNOw8NiBwAbP2r0MN9z9h9Q4Lwnwu
         eMQAr5s9E8VG3niYZ1yWryK/c+I3G7hrn36d34UFVBeabsFGdlI/NwYqB6u/SaZouGYX
         dB9t0paF+XX49TRW0BIaa7bZVUFwzf69MCFaG1GnZvzmunVK18Sl10G52eUhPvU2BHkH
         nPxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kzfaNNUY7sL+bzzMyCJL/b6vBfV9JuThvluB5Z9akUc=;
        b=WcxumkgxAxBxkgOgocC/2VYFWC8dIgBSHeasVhxvrQPU6kmyPDVwyCBJODnjTgA2T7
         eKvjZ5bzkF0r0tBLoqYEBGowFHE+tHVUZA6eWJ62i1AzJRlJiw3HmtMNJtCJQclCNLWj
         iCMW9Ba4B9mJ96dHMTeZHmNRzCTfx/rYolEU2bY+vLVSWm2FWNbZMqGC5FUuDGpXH8My
         uAchB+DLQJnq1oW6kb+X/Nw77mq8aUB6GMb21i8tFINsW8qbD50X4GX4VOCHVgnKtzta
         +JiQPs+xHEjt+Us+2/QSgtT3jeQEj3Yy4D5ZT69JB1LEeXB5wIQzRpbEumwmQNMeRIDj
         2cQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Oe6C3Dxu;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id n1si368817edw.4.2020.02.21.23.43.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Feb 2020 23:43:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F1C5400284D3F3FD3B9EA68.dip0.t-ipconnect.de [IPv6:2003:ec:2f1c:5400:284d:3f3f:d3b9:ea68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 615F51EC05FD;
	Sat, 22 Feb 2020 08:43:04 +0100 (CET)
Date: Sat, 22 Feb 2020 08:42:54 +0100
From: Borislav Petkov <bp@alien8.de>
To: Fangrui Song <maskray@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222074254.GB11284@zn.tnic>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222072144.asqaxlv364s6ezbv@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=Oe6C3Dxu;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Fri, Feb 21, 2020 at 11:21:44PM -0800, Fangrui Song wrote:
> In GNU ld, it seems that .shstrtab .symtab and .strtab are special
> cased. Neither the input section description *(.shstrtab) nor *(*)
> discards .shstrtab . I feel that this is a weird case (probably even a bug)
> that lld should not implement.

Ok, forget what the tools do for a second: why is .shstrtab special and
why would one want to keep it?

Because one still wants to know what the section names of an object are
or other tools need it or why?

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222074254.GB11284%40zn.tnic.

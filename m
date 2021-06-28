Return-Path: <clang-built-linux+bncBC3YFL76U4CRBLNF42DAMGQEYBYCFBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 959ED3B5B09
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 11:13:18 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id a6-20020a0566021486b02904db010ce8e8sf12999734iow.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 02:13:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624871597; cv=pass;
        d=google.com; s=arc-20160816;
        b=tSGxHU4NVrqOeHjUTHk14fmv2dk2WqVUy/ialhZXZDfc1dm/5VOKTSjfLljNLyBXMp
         dZfNKX1pdr7oL5Drufxa7Irhztc4RUaSPw6t0BMUqGlKMWbZJq/gepVzk4HwFipzkOIG
         ylPVXGfTqCHcf5NJt7Y4V+mWGa4FY9+aFvgMRjhO6+zXeXLnn+DRKbwux83rp8xf3EW8
         fgGTVGRJhFw9CWoXzvMobBD+OnY4daYf2uBKVMn0lvlj04+AVYAS0czO8IXl6wbRHT87
         UACz6usuAdiQxBnkZlpxTSVzRiLLrRgnBoGP7S2ZJNcDNQ7L+9LRoluJiE2oBbuBi1WC
         beeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Z5PeFeduWFiGf/z6gc1b+E1DYfQH+znst/98FDTDECI=;
        b=rGZxfXrB3MH3uXm85Ae3jRyCPfpNbZBOl7hiB9c/e1laALjjY+ugRe2UVWYJrKGBVO
         BNctwOuST5yfVeQW5MZ940Y+b1kCqJUOQnbg2mGqgXFAitJqdze1emmGqWwU2nMm89Tm
         CZdHDoWm4grzb26fvDdD/BKW+at2CKb7QUAyHud9bZzwjoZqr4tsar1Fe/l05dfsKkrt
         0fZ9dNyEcTyMHyf32bdvvGCzBeuLKtDZ8ddTzBV9cJaTdJEatz3byl8nHm9byW78MZmj
         k7lCpkR7B0X8zVyjU/EN3CcgpPbKQuoaqLZnWdwFzCslVoomwlecxKHKw9S+qIMEZyVc
         x5TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RkGdPeKd;
       spf=pass (google.com: domain of bristot@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bristot@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z5PeFeduWFiGf/z6gc1b+E1DYfQH+znst/98FDTDECI=;
        b=GvR52ZQFjVSTBtQIT4oGmYrbuMk/DA0FPfumZZniQNVIFx14N6jSXm7JOClm6td72h
         NeBQLOHPmfGo5NK+wC6b7CqKyIUysvDC9CQ4xpwQYHTUcyv04/ai/DDCpLSs57MSt85y
         UhPbzrkivgkHbb99w7fSC0bdSucndmqvw1jIuRnBfmjiJ7BdeOdclZdWI2y6QV53LCp5
         mtIPaRq1bhwwuM4U1dM1Z2hYv+skk/vizDRUr1QzwcBHwlZJUx+Aq7FZtcE0VEUKqfI2
         9dmXzrIP6VN5O8ZJENfTVPyZmhVSzutiT4beTC+UiFiy+R7gkLd9SICfMiO/c0hFdx1x
         D/pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z5PeFeduWFiGf/z6gc1b+E1DYfQH+znst/98FDTDECI=;
        b=lULU/gcWcb4b7zk8Wqm89tK5bYB9N9kqAOzK5ipx8ba/0Fdk+eZ6m9mZbY7ByC/lZp
         0rKsLZ8MTbkIyeNNSokIWoVgG8mfMMzkhK9PgR0FlU9QpUkZ5AzNOHBm7hNjgOi2xMOL
         a7DZro3c3A5T3/Nfi3LEnV5T1zdPhSrojLrHz+IPi7UI/i6TGuMT2zxvWI+zGBm25vg4
         iizdsJ+ZSlzTESNqbYmH8Rn1n5VkHFb/fEIQC0UWw5D4OeKrVIYZqMhIsVwLgXRsk85f
         YANmHDNVwS8glSPcEqG670mgnG+DVC6Iw86rnivAsejkKgvU0jz0zyk2KRSG63cqbutN
         NGBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tGUKtDPkMuUDzQUkEhlKPZ3pHOqrBvI6XiApVeHs/NhrYTOAU
	Qvtp/7hXUvRkovIUlIcazhA=
X-Google-Smtp-Source: ABdhPJxiHpFVx/wn7b6+FwnGrx8UkM2WISfpKpsR8ZdDEAoA5ojKa+JAhJ4tPFiy7GksoIiANzGplA==
X-Received: by 2002:a05:6638:5b7:: with SMTP id b23mr1040970jar.138.1624871597328;
        Mon, 28 Jun 2021 02:13:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3414:: with SMTP id b20ls4370435ila.3.gmail; Mon, 28 Jun
 2021 02:13:17 -0700 (PDT)
X-Received: by 2002:a92:1a42:: with SMTP id z2mr17218624ill.223.1624871596979;
        Mon, 28 Jun 2021 02:13:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624871596; cv=none;
        d=google.com; s=arc-20160816;
        b=J6xxw+J7bB8cNIb8QIGTs2NxNIM16E60aIQqBsDkZ2/nDNSfgddwRM1TZWylPqzXVp
         hWzOAFq/Z/OuQLS3saGXMfF1nxEpXBSOutif+9G4srmWd0MLicc8Q4dJt7uReawYtH/k
         wCMeS9RAa4Pk/ghrBZYG4NDlc5h+li4lDI3LU9iNiyot0e3YoPsylWJK+maOREIpOCgs
         KNoQX2VQRTkW6oFcmSepmzaHiuZqHPZa83W35mZrwCYevj4F+U86Zv0KnEPH/yLDvaLd
         C/fnE/A2rlmmQ1peFOcuokJfk8nzHawPwMAT9Rbn+4pkoOYiJFzHDFSmMmeVQvBZ9kFH
         Bpxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=aTlyhYbwi12H8iUHLWWzeN8Tfh8WUFAXSYT888KXMww=;
        b=qkY1iypGIjLQsaj7qBHYN7v5aRaEec5a4l5g34TVduwiACMGuhHRD6CXM1QE5eCvrc
         jxeNaWxUCBRw3tgShlrGshjW8f6M5gWAvF3ritvsuesJSi3jIgIG20XtkqAEgPMYlEbS
         Hq8ZR7RMTXalJWM8JIt4lWTrKGlKReioMOchmJ4RHt09bqglxZHVc2F+HywYBajX0dzr
         bx+6ITg/YUEhxxe0NifvPKs3oNlvjdoJ1w3eHms0RbAK425Z1tqwKX9T7yhmq7HiFJUu
         6czKyh43IlsY8wJqKtLBBlZ3nk6mhA5tBYAW9N59Jxh0nH3yoRimk5/ELWdv8JFo7BDE
         OgmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RkGdPeKd;
       spf=pass (google.com: domain of bristot@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bristot@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e16si438530ilm.3.2021.06.28.02.13.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Jun 2021 02:13:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of bristot@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-333-vMsAGfVHP--BG1_UxEbWXQ-1; Mon, 28 Jun 2021 05:13:15 -0400
X-MC-Unique: vMsAGfVHP--BG1_UxEbWXQ-1
Received: by mail-ed1-f70.google.com with SMTP id w22-20020a50f1160000b02903956dcb0172so663173edl.5
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 02:13:14 -0700 (PDT)
X-Received: by 2002:a17:907:2135:: with SMTP id qo21mr23535696ejb.385.1624871593744;
        Mon, 28 Jun 2021 02:13:13 -0700 (PDT)
X-Received: by 2002:a17:907:2135:: with SMTP id qo21mr23535680ejb.385.1624871593559;
        Mon, 28 Jun 2021 02:13:13 -0700 (PDT)
Received: from x1.bristot.me (host-79-23-205-114.retail.telecomitalia.it. [79.23.205.114])
        by smtp.gmail.com with ESMTPSA id yl1sm1718255ejb.18.2021.06.28.02.13.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 02:13:13 -0700 (PDT)
Subject: Re: [trace:for-next 38/40] kernel/trace/trace_osnoise.c:1584:2:
 error: void function 'osnoise_init_hotplug_support' should not return a value
To: Steven Rostedt <rostedt@goodmis.org>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
References: <202106270431.0esjH5YC-lkp@intel.com>
 <20210627232122.73f00a07@rorschach.local.home>
From: Daniel Bristot de Oliveira <bristot@redhat.com>
Message-ID: <d27f1f38-9b4e-c7be-03ca-055d89bc12e2@redhat.com>
Date: Mon, 28 Jun 2021 11:13:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210627232122.73f00a07@rorschach.local.home>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: bristot@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RkGdPeKd;
       spf=pass (google.com: domain of bristot@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=bristot@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 6/28/21 5:21 AM, Steven Rostedt wrote:
> Daniel,
> 
> Can you fix this too.

Fixing...

Regarding the "return 0" on void functions, I am making two patches because one
Fixes: bce29ac9ce0b ("trace: Add osnoise tracer"), and another that Fixes
c8895e271f79 ("trace/osnoise: Support hotplug operations").

Thoughts?

-- Daniel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d27f1f38-9b4e-c7be-03ca-055d89bc12e2%40redhat.com.

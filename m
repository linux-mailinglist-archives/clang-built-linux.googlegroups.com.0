Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBU6ZYL3QKGQEXCU35FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C28203773
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 15:06:28 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id m6sf8029291oie.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 06:06:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592831187; cv=pass;
        d=google.com; s=arc-20160816;
        b=AAqCHC75Qodm0rPGmMBzQSBOYKhJGh4wAJK+ryr2ZqVQqyrnSSD1npXGN9IsYbAR4J
         /ujN8/bAGs47WE9hKkhxoqL9mXrtHEEU/UXx9F02Tk2TzygSHpNQDnD0Q0jR776tiCnX
         MuIzquqiNo8YyMbmq9axr0Kccg2w+gLCq3ZdniH44LNP6KCx5jUaVG4sofUo4HNRtUVH
         KG5InoXE6fcIFBAU67gyXQnHHUHPCW7lYJalKFh7yrQWPixOS4w1Mfw0D+ferQtNLYan
         QZ/O43UNPxcKZ+dsAj9jzZyGAg2MGwH01PJ0U4yiTQrYPkqF3ckDyVMY8XChgBZGk0rD
         F21A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ehFpQqqZcAuka4L81avEHCc1M7oGvds30mznW9Xbw4M=;
        b=a74/oR+EdDQprQvYRhFsl22GDjKcOuBjIfdcBUtZONvcglMDK6mmmG06ve+9bBy7BM
         ZX/cEboY4jl4OryNrf9KH+NbIzULelRaLsOQ0jp4DHge5sarlaVe6O4knnl4Tj/CM1mt
         rZb+AP59P8IbqUbeKr5MbAg8zXQKUlePaP4/baXQa3Nr63lc5ziqKYIjxB6dr35uRLSX
         +vkHre9UxTB0onj3+q82wzFTmazWQbNgGIXet08vzu/9a02DqHqvsjfZPHQXJ+FXzzAf
         qV8+507RoVx1xe4LveZLf25XhYydajUEgRmvI0jxGwxOb9w4g71Q0cgu+uC1ykUN4elQ
         fkLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ehFpQqqZcAuka4L81avEHCc1M7oGvds30mznW9Xbw4M=;
        b=k1qwByqqXDI2wEFf1bmxdIjCN0B8LIM9h8Q2vvGfCjrSn2cQm5rkaXhn6/ENl27WyU
         bFSNAhKnUFD6stNug6yJYZ/hxqXDkNgpE5RsBUkWUEHNNxx9BpAfQFfi/5ClgetsZBan
         6t1PbTTflXPE0m59pgS0xuM3hi9KwpTNQg50KMWtGfv8T/U5hwxZVVGJhJDBW8nTO7gT
         ijmTIKqiQ4x1PctLA93MhM+op3czO2XjK1PIzGAbDRXPWHsmuZ3BhG/Epz6T4myNavCz
         dB4VDzCvu12zHab7hYxFgcLgMVbZ3H0xCgCzMEtESRK1kW58VizXv7a5EoSTyfNCr/Nx
         FvAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ehFpQqqZcAuka4L81avEHCc1M7oGvds30mznW9Xbw4M=;
        b=BKcmXPb/s4svsklX0SyXGMbpkme6Z2l+fjNruulF911OY4/IuBDmUH7/7CnVAD40jb
         5pL0Pma6icBhuw7YbFlPBoTzdthdfYm98LzRjVwNQfW4NABtItYJSduwhpazLR0TUmSw
         1ftw1clexKwyQu1RzrvpK0kVODCyduZADEcJCePjkCXkFJjRq/DMa/f3Mi3CArCFgjTs
         quC4c5J+vWBJGhQjJpsyeu04OPqijw9TDU4Edv2unTqQhQLrXooOwdtfb03ggo5Od4GG
         RpaT1yXzF33Ej7CIfv5DIFjt7/ijw8LKENGHqci9OmupBAgTiQOPgMyI/Xr6p8Z2FPaX
         rcCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LBeH3O+TJ8TJPE3J4iAvawbBIkGnia6fZwYtqjdWoLnb5LitX
	3WlRl0dxYacSMKoOXm0OH+I=
X-Google-Smtp-Source: ABdhPJymhU6Azs2PsxBp3/nsMj17WJtnCn1QGYQFM+YJXp4cN27ST+17U/B9TiwKGCEARimjFKfOMw==
X-Received: by 2002:a05:6808:6d9:: with SMTP id m25mr11568128oih.111.1592831187667;
        Mon, 22 Jun 2020 06:06:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:308c:: with SMTP id w134ls3218962oiw.8.gmail; Mon, 22
 Jun 2020 06:06:27 -0700 (PDT)
X-Received: by 2002:aca:58c3:: with SMTP id m186mr12590153oib.5.1592831187298;
        Mon, 22 Jun 2020 06:06:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592831187; cv=none;
        d=google.com; s=arc-20160816;
        b=0MQwSYWByliznJStpKuLuYoIj6VH2qnCkHDp4Hqe7pn7zBwQ2Yta7+PepN5//SAi8j
         7dwTpShUG0fFVKhUi5pyqYR8f9ttl67iEY8GzV8CWC9PDA9BnwbljDL+c1XcPm2sLXlC
         f2cwp5woWKza411K7wbF/Yl9l3GCtAnnSzBB65Mw/64AwVzI8s+NXkJOAsT18XO5jqYU
         pQLZfqDW+TqVS2/9iy6jJ7PXvgUGdHl+qw47Ml2/K6KFiCvHPDwztM9lp0U0cv6bdZ2j
         JlMiSXq9EzHcVBqwcubsx6auuoEkseDIab7Zrwk0v3M9IpiOkqMfOdYBQVmhKAhgLlsm
         ubeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=6DKyL7XcQA9d7NibRIYlCRA3JbNL/3s+c2i1I9MXpWo=;
        b=lroQZxXI+y1ySuor0z6a545qeY0g2f2DmQKwoq9JTbdUA7uu/MubhSe5ltfmdCZwgs
         8skzYH3szjnzH70tGYh1wfrknMwShrw08K+yrYBbLuPssbyO13k+8TZQhULQnRwQ5EcZ
         Q5jm76YUxBeeuQe0OIS7jPl1rGmAIyPlTMZuUfSzA3DT1jBLzE7XPKBOewGmjAggUeue
         7HGNYeFYJDKollQvZ38efvGrBwPH3/NCyvv4mT04jvTU1smbjUsdfCxhT0Jk86yTfc+8
         EgAedI5c68Lo+r00IQ8h1V6489WYLDhnft3NAx+BhlZNMwYiF49y8QLAwU0lAQx2F1Hk
         RUvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01:e000:3a1::42])
        by gmr-mx.google.com with ESMTPS id c26si945021otn.4.2020.06.22.06.06.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 06:06:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) client-ip=2600:3c01:e000:3a1::42;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 3576D2C8;
	Mon, 22 Jun 2020 13:06:25 +0000 (UTC)
Date: Mon, 22 Jun 2020 07:06:23 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>, Randy Dunlap
 <rdunlap@infradead.org>, Tony Fischetti <tony.fischetti@gmail.com>, Chris
 Packham <chris.packham@alliedtelesis.co.nz>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>,
 Will Deacon <will@kernel.org>, "Chang S. Bae" <chang.seok.bae@intel.com>,
 Joe Perches <joe@perches.com>, Pankaj Bharadiya
 <pankaj.laxminarayan.bharadiya@intel.com>, Kees Cook
 <keescook@chromium.org>, Geert Uytterhoeven <geert@linux-m68k.org>, Jacob
 Huisman <jacobhuisman@kernelthusiast.com>, Federico Vaga
 <federico.vaga@vaga.pv.it>, Jonathan =?UTF-8?B?TmV1c2Now6RmZXI=?=
 <j.neuschaefer@gmx.net>, Konstantin Ryabitsev
 <konstantin@linuxfoundation.org>, Linux Doc Mailing List
 <linux-doc@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/process
Message-ID: <20200622070623.086f1623@lwn.net>
In-Reply-To: <CANiq72=Y+beqZ8Dmieo_GKbyaLN8Nf1n3bVntj_o90Cn-nADRQ@mail.gmail.com>
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
	<CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com>
	<b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de>
	<CANiq72=Y+beqZ8Dmieo_GKbyaLN8Nf1n3bVntj_o90Cn-nADRQ@mail.gmail.com>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as
 permitted sender) smtp.mailfrom=corbet@lwn.net
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

On Mon, 22 Jun 2020 01:43:12 +0200
Miguel Ojeda <miguel.ojeda.sandonis@gmail.com> wrote:

> > * The script should not be neccessary once all of my changes[1] arrive
> > in torvalds/master. Instead reviewers should say like C'mon dude, what's
> > this new plain-HTTP link doing in your patch? We have 2020! Look at e.g.
> > 93431e0607e5 .  
> 
> In an ideal world, yes, but that won't happen unless enforced somehow.
> 
> Nevertheless, even in such a case, it would be best to have a script
> to check the entire tree from time to time.

As has been noted elsewhere, checkpatch.pl seems like the appropriate
place to make this check.  As for "the entire tree"...if this job gets
completed, "git grep" should be a fine way to do that.

Thanks,

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622070623.086f1623%40lwn.net.

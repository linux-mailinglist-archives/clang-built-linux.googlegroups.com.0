Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBDF3Q6AAMGQEOQRFEWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DB72F8427
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 19:23:09 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id 7sf3383019lfz.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 10:23:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610734989; cv=pass;
        d=google.com; s=arc-20160816;
        b=C6Wb/RZ1KIOQ2209S/grQrPk7UKpar2RAh3CYYgAB7sAsQsWC0YbzyBg3e2MM4yGOJ
         4yZ8jU9TrhVSPn4RBafM31IfXP3Mmsn/snrIpFcsbM44K9zJwkpxmNN20YraLz8GzTXW
         5fDBaJFw3pDsD/IV5x1YsXwZSnXMvclPV9KXtlNjEOymfu3O5H8Rq2fhBXuPrecZ+C0U
         yusbUZP0R9Ndef7rQBfOHu6iBukpGO4y2kQfaGUdOWAXaVl5MP4d1w8dZtaiGR0pr5s2
         E/yTQFDv7k2mBKDuil/4sgJQ7iOkZCY8bMU1gC7rDbmdLC5UlbOUTYknd0pU6gBHppwz
         Jgww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LH7EyBGuRGIHtiC24FEUT8ktx6fhgoNRfjFTROMUXH4=;
        b=WAbq4FyXq6g/BGsU1vI2+PS7MDrTTEkLFRWlOPq03zuy//JZjvF0zi5W5sYCJrT5ii
         ZjmXznLvEEFwKj0jEduFd5PiN+mbzhmpbNR24XyUvQaI0gWYsN6PrJpcWX2LoRFLG5fS
         OIqXPYCZr/VuXZZCaIJwBwi+1X/F402T2i5KDzGyEe6v/Btl1QfMwwesxQa6LY7Zggpg
         YuVkNpO5wWZaF1YRjipJpT7FMcrRUcpwwuaUDIy+JAIbZ+KEzJAQTx7JbxL1PtrYCrae
         HuY+Hh23iGl52WjAqNCneU850t228T7iYJR6/tAzEGrneGp9dU6xdBRTz8M7n1WRFC7+
         tY+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=e9D991Lk;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LH7EyBGuRGIHtiC24FEUT8ktx6fhgoNRfjFTROMUXH4=;
        b=Y7cVB5Qt1m7qfkjblUmoftaYysY+npvlcLixkPQFGJtXFAVge1yHZ4OlIr/YlWJIvI
         MQP4u8VA965LyGrUB/Q49ajCD26Mub5GKDbv/3fAgCgFWPyHUw+pKByY6PwjCp1Q873N
         TlOaIGkL4a1hHJ+/7QAHmKdofmeVFmv2t8Adlk/LO60pGu9AwevhrEAyzAbvul9WXZMg
         3V9P03sT3WZVFi1CZG0FC7TJWO2LuBuWsMuYuE04E8kWbDzI1CGsgFBKR306Q0xruZpp
         IS7zGRGZgPrNNDek0JPjUPsL8yAe+sdDwHT9s05pfoOAqmrJzz/JbT/v47Tv+SaxDyBy
         NuFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LH7EyBGuRGIHtiC24FEUT8ktx6fhgoNRfjFTROMUXH4=;
        b=FSrpSVhhu4qlCiKtphbKvIHSZyQ+ZanD2XlQMZF3fKsh363jvJOaP53/h203uVZ/Aw
         XZ4C0M1q+Uayo5r2V1GWJfOBuD874vEVz5Aiqz9XL1pTluA8rMfDvUW8nvmqCTIOfg2f
         u7WwSpkmICQIveFhpBW0Q+BnxYbNXZctLeApN7DWBBK8ZDm9IIyomU4oWqLGotA/6FSs
         F3EooSjrW2SJcg3bwhALJpAsYT4017tWw8tfsqDz8uG3M0CsYBQjuv8gIqHeezbY20pD
         6MDn0oE2FllL4TTFjAnC9eWanriSTOjlg6HrR5eWLyoMmpaJZUGvwkGjC+vhBIasjYyL
         2oXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GF5N8spPqgrVMdjTCvUgn8c0ugtxzTUjXOOzyG2zZI6YH/vQM
	FGG4hznhtL6ztHoisDvX1K8=
X-Google-Smtp-Source: ABdhPJxMeVhjqgrMBNPC5UPb8BnidaJ7lZd/hbxdCEqEY/gtxoAlZgsGQ5SnDWLHLPFw2OQF6gOq4Q==
X-Received: by 2002:a2e:3617:: with SMTP id d23mr5910132lja.49.1610734989046;
        Fri, 15 Jan 2021 10:23:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:89d3:: with SMTP id c19ls1719243ljk.0.gmail; Fri, 15 Jan
 2021 10:23:08 -0800 (PST)
X-Received: by 2002:a2e:7508:: with SMTP id q8mr5916531ljc.35.1610734988062;
        Fri, 15 Jan 2021 10:23:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610734988; cv=none;
        d=google.com; s=arc-20160816;
        b=qai22pvrvAB3sJixkpcx0FEu9N5MNL+eKrDS8N/FMAVs0PfkSojJjsabbtY+quoWyD
         XYpp+0pg86HBgA8bP9mbaxM1Impue35rBk1CR0EEOrIDm/7twE+wAO4/80mbHkJf0q3H
         IIESqoR/WN09Dz4qJqpcD2dDFSo2bspnyLuIguWtvwsoINnMch+HTRfDw8s9SqS6LRGs
         SQNb8FaVEsk5q0jpYgcI0yuh9otIZfx/Om0XBuvGKPIPpjvDhSjpn782rNacWorvfzE3
         E+r+gQLvfESJCf+d/FSbdW12K8WjDbdLSD7jCbNKHMoH7yP0vIHM1B2U7jnEkrlHDDIR
         9R8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9Upu8gJeK7QO6vVnBI0oIDG+LboU8MjZVu0C+7e8gCk=;
        b=Lpx4RsMhLXDt3zgKvI/ei5mIQ2T+HWJE043LBJnt46D+erny14f3MakZ/Cp84vsQt7
         Ho3swhCQwOzJvyAqyFHZn/8uEc5WerEHyzVhEU+PSUcxLsUWrH4qzJCYWQF9mpRL0kk5
         IuWPl0UW1Qi7XWLw2WqvWsUIuuNyvbu+RBvO+AHOPJsplg5lz3lKYk/sE8VLeGGAl35L
         5k6y/KsQEExYVh3F2bPs+Q44IUj/5udeYJcY6H6k4kC4QlrDhYhEiA9hwN88lIsvN+bC
         qUiQInImzUX2g+L6YxcJp6HElgO8HceCQEjslrA7LxRyZOvUd4Acpm7lyIj5Z4fiudIL
         PLng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=e9D991Lk;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id i22si452886ljj.8.2021.01.15.10.23.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 10:23:08 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0acf007cb1195bb528937a.dip0.t-ipconnect.de [IPv6:2003:ec:2f0a:cf00:7cb1:195b:b528:937a])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 556261EC0494;
	Fri, 15 Jan 2021 19:23:07 +0100 (CET)
Date: Fri, 15 Jan 2021 19:23:00 +0100
From: Borislav Petkov <bp@alien8.de>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210115182300.GD9138@zn.tnic>
References: <20210107223424.4135538-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107223424.4135538-1-arnd@kernel.org>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=e9D991Lk;       spf=pass
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

On Thu, Jan 07, 2021 at 11:34:15PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When 5-level page tables are enabled, clang triggers a BUILD_BUG_ON():

I have CONFIG_X86_5LEVEL=y, CONFIG_EFI=y and am using Debian clang
version 10.0.1-8+b1 but my .config builds just fine.

How do you trigger this?

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115182300.GD9138%40zn.tnic.

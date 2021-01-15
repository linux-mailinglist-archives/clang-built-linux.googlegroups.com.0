Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJV7Q6AAMGQEAV5SR2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E712F8476
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 19:32:07 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id y20sf13666890ioy.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 10:32:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610735526; cv=pass;
        d=google.com; s=arc-20160816;
        b=FxZhBZgwxA3c3b77Q90W2cyPYAiiu9msKcn8bggc4BE8uKVsZVFIE9hynTk6g6aZSa
         HIkrS/hs/KOP+fNWXPzWRZ5qbne1olGTSV9OaCy+PhD0WYCJ+iGygTS5j3+3/ne0nFEI
         7oaW19NjUqzzKihAFXCADnsF4mTIQx4E2fb1ySvokMoUESSCHKbYZlRPPCuU/aiu70Jb
         Zzlfie44+htup8FHzAmlewWumDAN8BBzKdMCPiYMMt1Yqb0zx+gTM27eSDuarK79Dkgd
         AI2EGiLEHxotBeQiAHgElcPqKaQNDVKWPSxzkbyaLjZRPcGJnwd2qo49dzpTT7nh3qO1
         ce2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Blu3BKZRbF7URzTyG1WjWtr3XuU0NrDqG20BJvIsY4A=;
        b=mQOXJ2t5DxaAPaexEwV93Mu5DjXALhLs7V6nl/YLRFJ1+4Z657oIiFCilov61XJQvv
         YRDB2o7v+l7ag3nIP1K9dsYnWui98CyxiMm3aiwGQHDRPKHLpxJUEyzq4D/4ZiFUDZO9
         wD6w7VpDhgN0CT0vM2OW8mqzuOGSiX/inUecchNVfp4JBHRI8ruQL7UdIxTNfQ+yHeBf
         3xBh4eRw8R3jQYaT57mpibcJWxI8ClI7Tlhwtd6zmDgEr5q1c3og/HHjdM5qOyJCpSnd
         juwkPcL4s2xYdsa+87CFGnh57aWUOlLslXe3AxocIAdeuKMHHCieSdTiF/9AJH7JlrfT
         WAjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ez0mmPRz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Blu3BKZRbF7URzTyG1WjWtr3XuU0NrDqG20BJvIsY4A=;
        b=OqQqKUME8V0PZ6u9CVliFZHjePJHS8rw6VWpejmcJGfTrhKeYhfuPfGhmxPnQ+F4bU
         47tyrDdpZ1QRnp3/z8N5IcOjtNbX8bSPOOpbIPpq05OTXy/tlxH0iWThDr1n109tXuRF
         Y5ZhqwL5ZiAzbwlq/uy4FMc3bNPCXD1hRrYU6rilRTGZXWRjPG1+CwjGevBgDy8HeJtS
         EZmPYnOi/iZX7Bc6zm9No/yF6xQAAXEt8EmtzHJp+uaU3801wwYkzbbRjneiK5QNiT3D
         ikQkxbdF+SMkLiT7RGoPt6yafNQrcggmA7dg4SLI+fpfLWmD9jld1Ux2WILn9SQkNVUQ
         if0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Blu3BKZRbF7URzTyG1WjWtr3XuU0NrDqG20BJvIsY4A=;
        b=QQRNr6BtTxprTlR/vIQ1xLT7a24wmcK5x/nynODxMiVvxE/KLmd+3+fkpjBm2Mzv/O
         B9NsIeGmGQYrKpBN5UjdlNdUWBz5gkQtag9W80yDNQMA2jJS+HF1Ko8lM/iMvirRirsi
         fGi06G3N/WqyTw7vbsLBcDFd1mety/ymyizmTvIw6mJWwM3oV3BzwVzdcMEYzqtwWJOy
         OY9oooqAdg4D/4UTC2ChpRVpgt0XKZtbmS+qv0Q52JM+HNRkbCRl7EXfcbrhRRBbR9fv
         Yx9PD7s0UpApn+D5X5oJFkZck8cJw/SuEz/h5SejJo9mXhdodEs+hjVYJuQt9HHUO+yP
         Q8Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Blu3BKZRbF7URzTyG1WjWtr3XuU0NrDqG20BJvIsY4A=;
        b=QEsbeVl42rgFUkwrDm1PBzuDFPBs5HddEnpqHgE7b5nY3GeHTWRxM2/07fJ+2q1b9s
         eEDkIGtjSXE827Lsj+0kj3F/Ufi6sfufvqj1E3rX+uNd+wa7mH98s9cZcZOwhGvos4kq
         7DpkqOpmF/T0sFehsUv7SrW/qm3QsSzMlUhucahnLau26wRXHmjbUfH4RDbJNZisjOyp
         8FveMITuAYq2cPboVTj4niIU4xtEUtY2k8b863mCkHLtUu8LL9ExcfmLzuf8uBs0Ak6D
         IzQhCT6pryAQlmDpLbqipZVfzaQoYliGrhS38fb8J8iY4Ro+MREGi/lcSybJAmxqRmks
         j4xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532X4tfqU+rAf7q8WEQKRJ1Sbh6RWlzlU0vDpkIjdURIwfKY1uU7
	eacAjfJCMwIbVs4OKvPjivs=
X-Google-Smtp-Source: ABdhPJxv/xZGxTP9ZzaiKpeIAxfZ9e+Hx2/ngwT2Xu31NkaJPCJFPnzeaDZ/tXR/7SykKfLARACWmw==
X-Received: by 2002:a92:b60a:: with SMTP id s10mr11915736ili.135.1610735526335;
        Fri, 15 Jan 2021 10:32:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:48c9:: with SMTP id j70ls2785972ilg.6.gmail; Fri, 15 Jan
 2021 10:32:05 -0800 (PST)
X-Received: by 2002:a92:b60a:: with SMTP id s10mr11915716ili.135.1610735525950;
        Fri, 15 Jan 2021 10:32:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610735525; cv=none;
        d=google.com; s=arc-20160816;
        b=ShuoYptPj5OrcFtYmkseQNvYXY3AbmHEohwvNBLo0tPYhh4KR9Zat7e1xnO5+6ds4F
         cgARjkGTJwdZIoWQhkNrUI+oC7VK2jAZxg4jZPZqGbFqGe8ufBWEFy3jWHYcAxdq+JmZ
         o1ZeZzXT3fuYR2xeQIKR5SwLQn/i++uK0fY74v33dPd8LY1X3Obz2fpw2L6l9sQBWuhC
         gc393UXdwBs8/dCfCG8Qiajx30WftQu4VUcYNoUZ1JGAYhhoOfa/QXl8d6YZTsr0GTxo
         CG/DyYcwYdW2lcuivHXZQXoQVy8F2c2AFsrJsN/bB1H14sf5GfonsFG4Gb+D6EAg2ptO
         Ifbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NWIVG2KxAyCSAbHgbe1kK1Pe6u+Em4RwT5uHY88V9T0=;
        b=q/FZ4YAezauGxBw5HcE7xFMzeMSNFZ9BTOq/1VDTZqLAC+nmYpDogCWgJvlxQ8DA7X
         YnussoTNvxe1Lkth6GVpAxl5zslF1QLBDQT23PQFVyAj2PLYnuMBgk5VgO63/YiUI7y+
         YIho7QEHjiPwNJxT0Rh1CF/qUeSxE9MmbamE5djdlgRisGL5n4Rc6sVe4wFjJLvUbPFP
         BU7R1meaZZ+xxMB2cfbbkGvHsx6Iw7+nSrV6aEC3JGRRD718xE4NZANc5cpMCI+GFS4F
         VSMuwjnCDc0tVSVrjcWwDZY1Q1nRDqbY8H/eX9jRHrX9z/g+v4NLf7eh7fjTpVirWEIg
         GO4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ez0mmPRz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com. [2607:f8b0:4864:20::732])
        by gmr-mx.google.com with ESMTPS id c14si1051989ilk.5.2021.01.15.10.32.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 10:32:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::732 as permitted sender) client-ip=2607:f8b0:4864:20::732;
Received: by mail-qk1-x732.google.com with SMTP id d14so12576430qkc.13
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 10:32:05 -0800 (PST)
X-Received: by 2002:a37:4796:: with SMTP id u144mr13186207qka.235.1610735525568;
        Fri, 15 Jan 2021 10:32:05 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id c136sm5556114qkg.71.2021.01.15.10.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 10:32:04 -0800 (PST)
Date: Fri, 15 Jan 2021 11:32:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Borislav Petkov <bp@alien8.de>
Cc: Arnd Bergmann <arnd@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210115183203.GA1991122@ubuntu-m3-large-x86>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <20210115182300.GD9138@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210115182300.GD9138@zn.tnic>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ez0mmPRz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::732 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jan 15, 2021 at 07:23:00PM +0100, Borislav Petkov wrote:
> On Thu, Jan 07, 2021 at 11:34:15PM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > When 5-level page tables are enabled, clang triggers a BUILD_BUG_ON():
> 
> I have CONFIG_X86_5LEVEL=y, CONFIG_EFI=y and am using Debian clang
> version 10.0.1-8+b1 but my .config builds just fine.
> 
> How do you trigger this?

I triggered it with CONFIG_UBSAN=y + CONFIG_UBSAN_UNSIGNED_OVERFLOW=y
(it can be exposed with an allyesconfig/allmodconfig on mainline
currently).

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115183203.GA1991122%40ubuntu-m3-large-x86.

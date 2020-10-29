Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBK6D5L6AKGQENGAFV6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7020029E9EF
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 12:04:12 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id f5sf1553281iok.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 04:04:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603969451; cv=pass;
        d=google.com; s=arc-20160816;
        b=vO04fcTVBwPqMyLwAamka4rtMlZiTfnpnmj9Tass/olyGQJZ2sOFnWWWATFquagTkH
         UN21LSNDYz2giCk/BgXvTb7pCYCHtw0qXVq6wGw2+9+y0AniR3BNQ4tCtGYWfAlhUDfl
         bBmroQ7ILnryd0dcqYMNtJILhNX30t+1Ebq/JkujVCeYvG6D5BO5ShqOSv1crOfKK91D
         EKU0IJz8GLJ/wBc9B6OLu+ujCZRBSJYz2Q3oVlQFAQKzjRLr4f9vwfPRb1nTpnL//Dd+
         efpiJYGGCjmHWRXhijHEbRaSBqO338I9IPFRapFTTu3A7WB+dP9+8uUdsLOoRGfu4zr/
         C2LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nsHHBtK3LNoXdTaBjsAQAX7hBQ4Ku6sy16fFdIevD+U=;
        b=W1rNM+YDjxi81vC9smnvYPgGIzHfut8QIOm/oyQBEuMQyoTNWLDHKbTFVl10fvZlnQ
         SKivrSl4z7K35rz9ig3RWhKdPvBfOibvedjGwaUbvL+cvno92x/NkoIJXcDCr9vcJUJ5
         rBNThLDrXV7q3ZGEkvcFD2HBLvM4kJdP1BzypYjeijgmq8aC3RxEzXi0ljYO4ID+1v/q
         kv7U2RpMB8k1RegU6nte0Y4jzu/O+4YJIHsleVL6WTYPVpKXER7qj96RM8wjd45yRmCA
         D3gYVCdiwx7iPXer1Xt/dNi2Kb+pZ2kwyp+nPpulxocTH+6O9cW4pfhOLfxuz6gan2ym
         oAmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pJwoIxIi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nsHHBtK3LNoXdTaBjsAQAX7hBQ4Ku6sy16fFdIevD+U=;
        b=jxAZbpmOsrXtPOe4gBGfDvqgE7pIG9DG7Ro8+4gP6te15I45bEP8oQ7p+rMDbGhEUC
         MApdD8O9o2e0vhSy425hD01vWkP3WNoMJbMdKum8joYA4C+CumIL6Z4QjoFbE7JS4V5P
         OIOB8bbnhkE8blGslr6n3/Os9PwloC+Ehou3qBysybWHW1j+bav5r4tYOEW8YfLNzQZO
         5VqW7mEIH9G8syV2vlAk5zufXRFNgX3HQX65xtxl8KB+PYrMs53VJNYkkFKgidGbE0z/
         ZevrfuuJlxT7ub4uSYLXtlG6iW0LntWGLzoRgin4Rv9tHS3h82olhvTXsS/yVLnUQF6V
         4O7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nsHHBtK3LNoXdTaBjsAQAX7hBQ4Ku6sy16fFdIevD+U=;
        b=hlz58msTP0/Tg7KGa/GBdY39Qmu0xqi6gYsqAlfcXaPCpkfXCLXTxYP4G8hA5R35ov
         H4BeX/O6sbN+W2cMTIuMYb+TuDkx60t71GniOL2u1MMXnxQ62nRfLNssAFwuscb+nJ8b
         /pk54iYB851fHIvGwMW/RRP60kcnqa53NtlNZDFpUfAZVWUToGF4hWb8+83D/5n+Kqf4
         iYqIRbd5QHj4mPvU0PGRuiIkMI7oq0pcO3lP3ZNSL0wZujoJSmfiOVvwUKpL1G1fgeG4
         tzTrb38CexZniQDMJA7WeRPiEGBteA+A739d0t+sE0mVayKrcyHLYd7JXxn1BaZ+QSk0
         bZ8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533z1S5nPTFv3uutLvzA2t+2RC1CsHOBNj+d/dLjSJ/55qxaOt/z
	2rvSRqyUgWTaDYJXYAcgnwg=
X-Google-Smtp-Source: ABdhPJx2wTUGggC6ExOUUYEbqZTR34AOcFQ+DRXTv3gG+4u6ickUxXslLdGTwuq/PHp5aL+oPDAmOg==
X-Received: by 2002:a92:b003:: with SMTP id x3mr2802090ilh.4.1603969451443;
        Thu, 29 Oct 2020 04:04:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8d06:: with SMTP id p6ls409491ioj.9.gmail; Thu, 29 Oct
 2020 04:04:11 -0700 (PDT)
X-Received: by 2002:a05:6602:1352:: with SMTP id i18mr2961243iov.148.1603969451035;
        Thu, 29 Oct 2020 04:04:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603969451; cv=none;
        d=google.com; s=arc-20160816;
        b=TKwR0nldypXMkv1qtnleJEWDI0G5xNXxET4hlyCwoTqzgeRXbt4x+GoGWznrgbJnFI
         JWjklgfuO8EdMcvCwBcJL5DMJY81Z+mnqHauzhN6GNgP56Nyo4YcbIS8DnXDFio3p6Vj
         lonigOZzES98j4creFy7L3OKgS5w8M81BU8hGVqn52FMLIU/MSnEY2kW2bRQ2KZxwutN
         UNE9KUMn01kslwWM6AyQmQs+8Iwso+EMcD5JSd6vDXsNb3x9rt2/p7zN14KUiONUDGvT
         LE2HWYAK1uA1ID5vAEMYXSvvym9cy2qfnPlVDe/vOhKIa2fS6Y3TVQ8lLJc6/8/aDgdq
         9Fuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=46ft7HZ88VC9FfRFMq5cpa4dFB6g1kSuFi0lWy0P9PI=;
        b=o8qiVYrI5RyjTrp+w/qu9FUpWmy60K1fVQ2egqK+hRdzyCIn2vR2O+Bwtl5BYPcGdD
         t7HRu/Uu4tDpQ8rM/SNjK4IscoA95DMR816VG+TLStfm6U0tuxmzWEgq62RAnqLLddzX
         dIl1q1VDX5/aoYLLUsibKtGrPNc3GgQaPemG+cog1+Dl+FZbxrBsTkbyLdrtTi5VuMGQ
         zpwel17s4yyrmK7ubnzZ5VYrBNhUy3i+8xr+w9mGY7VZ2CbKaTleZaDRYPzU+Sp9E/wp
         UxTubf+VUD05BMre0OUf5c3D3XODBwNptEB67d5T9HpBzQ3GxQ1btFsA5wlJvA3IYq37
         EiNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pJwoIxIi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y16si48080ilk.4.2020.10.29.04.04.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2020 04:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6175220754;
	Thu, 29 Oct 2020 11:04:09 +0000 (UTC)
Date: Thu, 29 Oct 2020 12:04:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>, Sasha Levin <sashal@kernel.org>,
	Jian Cai <jiancai@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Dmitry Golovin <dima@golovin.in>, Borislav Petkov <bp@suse.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>, mbenes@suse.cz
Subject: Re: LLVM_IAS=1 x86_64 patches for 5.4 and 4.19
Message-ID: <20201029110459.GE3840801@kroah.com>
References: <CAKwvOdn78WAUiRtyPxW7oEhUz8GN6MkL=Jt+n17jEQXPPZE77g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn78WAUiRtyPxW7oEhUz8GN6MkL=Jt+n17jEQXPPZE77g@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pJwoIxIi;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Oct 27, 2020 at 04:29:17PM -0700, Nick Desaulniers wrote:
> Dear Stable kernel maintainers,
> Please consider cherry picking
> 
> commit e81e07244325 ("objtool: Support Clang non-section symbols in
> ORC generation")
> 
> to linux-5.4.y and linux-4.19.y.  This allows us to use LLVM_IAS=1 for
> x86_64 Android kernel builds without warning.
> 
> Its partner patch (8782e7cab51b6b) was already backported to
> linux-5.4.y as 8c627d4b15de9, and linux-4.19.y as 6e575122cd956.
> 
> https://github.com/ClangBuiltLinux/linux/issues/669
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e81e0724432542af8d8c702c31e9d82f57b1ff31

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201029110459.GE3840801%40kroah.com.

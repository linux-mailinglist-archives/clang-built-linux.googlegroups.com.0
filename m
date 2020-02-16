Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQN4U3ZAKGQEHHNMI6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B20160617
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 20:55:47 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id f25sf9291548otq.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 11:55:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581882946; cv=pass;
        d=google.com; s=arc-20160816;
        b=zpiF8fAmJHYr/nwc77W8yW3tQfNYifpIlZuuwirufNK1e0werAYDWfDOl7cgYiWpUv
         C/E5rVMTJhdxpXS1Q8z+qZeOa30cCu/UGBP5oLLtW+wXgbK0HrNzcXNX+499GTSE4zv9
         zs+4g6ZIcCd1r9CMFOoHHe1Ibi27QV3mW1mZRPpWE49Sk95iWvhRX1ihOYgs6xGL5ecO
         iSoegs0NZ1+Y0FEPdQolGFYDmIoyZVAeabYcNbbMjwbBBuw86CN+lDZMFeIs/E3O6ovJ
         icGMl2X/T3fsPNjxP1P3RELQ3nAtypES+AaAOW+q5ys9yAJCK+J/vNSP2RoT68/Jmu8B
         lsqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=AkSHgEzhYQllSdv8/gnYi7tOw7oT/9qWS+mHQJIi904=;
        b=qMt/ligM/7nBs302TToN5Ol2FH/ta0qvmL/eNlCo/OniEPHx821vnhqlM5K/qJC+QA
         Ue8IYPI8Dnjg7ZDNH/XcI5QN6/zJaE0ibi1qeRcP4XYI8NW6ahLV5Q8kEP62m/u7SaRd
         JTs7HJ34hzoeA6zFgcfHfExp6J6mvrZz4SrAwWHSjik/lyCtiOhkvcynsVduYTdGwooy
         jp73nvkU//As/fQQ7XDqdhRlJ9FKLpB4Z1kmHCaeE8fGtWL145SrgyLIfGzvI2ouNMhu
         KFUYWXioRr9GlUctwa3uaKz/Z6rWuRgZ4BpTucfh+uXYJ7TjD6aDnJrh730YrjUYjuSV
         Ymwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lR6pcw+9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AkSHgEzhYQllSdv8/gnYi7tOw7oT/9qWS+mHQJIi904=;
        b=f4AKoIYw0E5lWYK3pK1ttfJks8e0AUIZwYP/y80hFWUEWm8MlfiYTP2TDSAmyyKuaw
         jxAEtZuESvlVPb58NFQwTTf4phSjRkhxCxrVB4FDN27Vh5U2xWZvaGN5JgukCmBHC6MC
         1HF5cAn0s56X9UTv6To2yR57cAcWGRknozRQGF1JxPs+VcZQVNwk6UAjfGGLPcs8la0d
         pPdvJuC219RZ1Omm93qnFliUULLwCgDvOWh2nTv2TvrrJsp+6gSdO0HH6Zy9cDqTT64n
         fAMme/OyCbTjvUeL4n66gF9L7AT7EKVoxPdx+dSrCI1cKW9bRHD9RMa29sB4dsZ4YM3A
         IsTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AkSHgEzhYQllSdv8/gnYi7tOw7oT/9qWS+mHQJIi904=;
        b=rWBIk52J2oG4gKJreA4b8lz4Lquq66Smp56hviy2rI9cKVJayVlfJVzKrm1YpKY114
         v19e32YDh4eR9R0iI00fvTWAG6yvH1trmVDzh7Hp7YOvl9WdFnIGbElBEIGXrn2O9qMS
         rdRxlXZVxb20LCZ+2Ogg+8TRGUT4ERtcqdP33c6DlSAVoSRTvO0Fkpu5anyWd/KM8E2F
         iw4y5PE76tW1ziU6PPb93ecBlXtclKdznmKKXXp7rYBHUUHIBOoHDcP1c1znQzD0xcwZ
         r8pA+Og2LmdBzVRVdFixZEsX02OG0ST3HEnqwLYZDZPVsO7+N9btaRVAdtx+2cvb8kdD
         Q1Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AkSHgEzhYQllSdv8/gnYi7tOw7oT/9qWS+mHQJIi904=;
        b=rSzrRZgc64SLXUfOT0jG+/+f1OehygBHTc++VVI9jKK4YfhLULMdNWnPrKlwOLR5uK
         yLqQxAx+8Sju+gpjF39mAT8Rj0TC4cDTBY+DaDro4fTRPZCM7pWNVuderXsr7LsUR8a3
         Pr1NwlRB52Xaz7CeXGN1hItUwvjzgFqmC1c9d0lb/WAXVFG8VoJpfg/4EP070ykQZufz
         V+2ylQDX/ztCWe2OIxCg4uq1oggC8d1Cq054wxMqa1CZysuCnTwP6U0zm31WtBz8zuh1
         xvgmLHSPumyELGKKhcfrqMLpj0yl134XLC9lLpIURFdPGC22ETGCKHC+nuZJ1v8x9FYQ
         6oTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV6QKj+fPZow01aIKSDuE1T84sgc1VpAzEc1Izt4xoJ0C9lbEaH
	SDZO8f9lR+Aw8FNcK4rUXzI=
X-Google-Smtp-Source: APXvYqzZQsQWvk7g8GWmsCKs84dG3UdQn+2gNkwmNgH//Wlvj9m94yhlkrknTNn8yfRX6YdCSItV9w==
X-Received: by 2002:aca:a857:: with SMTP id r84mr7753213oie.41.1581882946018;
        Sun, 16 Feb 2020 11:55:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:3ae:: with SMTP id n14ls1523978oie.8.gmail; Sun, 16
 Feb 2020 11:55:45 -0800 (PST)
X-Received: by 2002:aca:dc45:: with SMTP id t66mr8252077oig.39.1581882945751;
        Sun, 16 Feb 2020 11:55:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581882945; cv=none;
        d=google.com; s=arc-20160816;
        b=Zrbm1dLdGLj9tDqsVZMJR7Pg/mADFvAvZ6aC6J1GyhKy5u2SIlOMMogr1yhHHxzi8I
         4+funmQyWv9L5O4FhV+KZknQw8JZH0HjmQ5xsVBfPk4EbodlXnxbbflGg/cn3ZiFRTCP
         C2QB2NZOv3juU7451BDQdcugU5avJn45Vr8YHp3H0LMZWmW7dM6FXSywddmEjyQFw+5U
         tpxU3cK241Xak5DKMwFWq3fedOBx2i4t+FFGWizmMdGH6+invkZKbCm82SxIeth8l0Vy
         sAHKxeipfIihuZp15iVIRQVOIJQxTrqPbVcXWWTP9q/RLKrlodDrINKnSNaPeoVJyzJV
         B2+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5Gjyg7C/qUM1CPw+L63jimvH6kTtUlFR3Sqxw1W+p/o=;
        b=VR+uEZ+1gTbpnLpEJPV4jBkL9+5ne8X56tWA+64hwGwrjDps3nUM6yTuNTIUhCRRv8
         jnaP5OK+xnUa1El/N8NXK3C0lN+Xta5Hf0glUkvoxIxM2fs+5NyNWK+FpvenEcSXEOba
         th9AVMRSq8EJnu80COW3URgMibjs3ln5AXkk6seNYKHOzpQezF0O/wC9FNy98JNNL1X0
         kpwGPFJhUQZKY32E3FuR0cI1gNUxLKvi7vGAS+eRlZFG1ZEJS8itlEBwyIFT0r70/KdL
         lnmVlCuNFhZoEPkXL4u77BRCAPIuS+6UWapLXfsNWilF95qkSuwNe8eTxowhe3SKpz5h
         lgBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lR6pcw+9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id d16si613803oij.1.2020.02.16.11.55.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Feb 2020 11:55:45 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id 66so14070170otd.9
        for <clang-built-linux@googlegroups.com>; Sun, 16 Feb 2020 11:55:45 -0800 (PST)
X-Received: by 2002:a9d:7305:: with SMTP id e5mr9359175otk.64.1581882945402;
        Sun, 16 Feb 2020 11:55:45 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t203sm4082674oig.39.2020.02.16.11.55.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 16 Feb 2020 11:55:44 -0800 (PST)
Date: Sun, 16 Feb 2020 12:55:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kbuild: remove cc-option switch from -Wframe-larger-than=
Message-ID: <20200216195543.GA54314@ubuntu-m2-xlarge-x86>
References: <20200216151936.23778-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200216151936.23778-1-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lR6pcw+9;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Feb 17, 2020 at 12:19:36AM +0900, Masahiro Yamada wrote:
> This CONFIG option was added by commit 35bb5b1e0e84 ("Add option to
> enable -Wframe-larger-than= on gcc 4.4"). At that time, the cc-option
> check was needed.
> 
> According to Documentation/process/changes.rst, the current minimal
> supported version of GCC is 4.6, so you can assume GCC supports it.
> Clang supports it as well.
> 
> Remove the cc-option switch and redundant comments.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200216195543.GA54314%40ubuntu-m2-xlarge-x86.

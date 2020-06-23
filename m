Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBDF4Y33QKGQEJVUCCNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id B73842049A3
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 08:15:40 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id k10sf7578634lfk.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 23:15:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592892940; cv=pass;
        d=google.com; s=arc-20160816;
        b=tmBWhPKNUaLIxSYHAj34iGRUasYReJXrxxh6iwxNLi66M9EI8OJvWQsvCzDelHx1mh
         qQFDktF3qUA1xYEHOdI/78W4YWvug5guFQA8sozayBcy8LnCtMelh8ZCXA8pEBqaaMAu
         JuqDpz2ppN8M7O7npKcs34FWESqWENSbrlbG2Yr6QdpoFMcpew2JyisqiB5FKUG1ciOy
         C+QfkJ+fHmokTAJu3Zv+WfV0biIc8t/NXgGZUoe1+X5VjuGsTucMwC6Hq0s19ZWNo+9x
         Xz1M72sLRQanP85F75P17CxXffBENdfJfjYlQGR1mRPTD/i1XPgf0OROJJ5YxyxjoI6N
         s1XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wjCHwtELve/k/9rKEHFMK0Am5bZxoMhCutSl9MJQZ2I=;
        b=CPlN3NQZshXWdfYAV/RCKUDpM/lwwp6CMX5dce+tdABoOWvilE3ykJcbCwE3UcFhx2
         UZjJ/TBPK6LQeIQbBqgdpS01Kqp2Gesx3A2spVy2CjdsR1BOdAWmvlgsKxiS+oIqXfMb
         cdcjiRI/UuF0mnEuPfAk+DzAdX6I9yjvMvIZpcArMQzVaT/JtnLp+M5SgJhXpcJCpeVG
         qPXHLxuG0I4kpGg/BFQKOqcvLsYaWw7MToHVGeNio2JO5+jmlF4ZhTxxhksQoek8Sg9k
         vRhw4iRAizeQmYJbornEYVWZxdEU+J8H7ecbSAa4KBTrTSK7tYRUDeUnnkU6ZVVoELd9
         nW8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wjCHwtELve/k/9rKEHFMK0Am5bZxoMhCutSl9MJQZ2I=;
        b=bcalUWahc0xFq+o97XiLybRInAUdN4V1U0Hr0QZLZXHOZoKQ1JQmWXePzFpVH2cemD
         95KpK1rq3Xib2c18CvWSQ1dOATlditZ+nepgHesjttR3c9t6V5NXhCD6/JCANIlTPHAf
         eC3vfoZcmGU5RI72c+o/Rusv6wmTpEEDVsrcIWtfnnNmUhbZ29B++BVcf3q4HbzBK8DU
         720YFlyjXNi68N4+3DPnnZoqmcYTDkQ3m/5h7vxWt2zWsF1xK+77TscasAv2b+hSwSPu
         KfLVgRHUfMg1jKllGghtmdQ/1xm73G9k7YE5SyKILWgZZlgdt1AFNw85C7jUzGq10KEF
         gD5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wjCHwtELve/k/9rKEHFMK0Am5bZxoMhCutSl9MJQZ2I=;
        b=j0UFskZYDWYN18qS//5ybJoTfucBVhuCSdijaHrnrMVcLpCRryYAlruyYt3enui1iR
         xRZYRqx1qI/C5HvP8v+Ss75AVEQbq+qpgndV9TuC6Bepg9YQ/s5K5vJHVpJ2RaaXCu3l
         edhLCmekG1kr6xcskmAm/nkYNkrovyPVWH7Jfu2jzcXC6++srUj1Xci6IUxfVeMBbC0E
         34ccR6GRoS2+EIpXgduMZyy/+fYlYlqgBjQO0VaXvaT0Eo/9oNe4iq6UeL16AVGUCPJm
         GcenlqXwxz4bfxDS1zOByLH3g/YdA2MTVNvL1Q1yB5oIAsj5go7iJSU8Gvh5CUmwjV/G
         3oGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qqgIGUQE4yJFa7yHxe6/Pae4+grL4iuXekjrTjJVx0psG2KT6
	FbtAvEihlf9iNGn4TSMYvGw=
X-Google-Smtp-Source: ABdhPJz4tt5L+6XzNUZofxUY7BnO6Tl9ePZ+aKu4CSgVe1VQPGTgsG/wQACAbU28TeB9vQFmtlGqMw==
X-Received: by 2002:a05:651c:cc:: with SMTP id 12mr10382139ljr.397.1592892940103;
        Mon, 22 Jun 2020 23:15:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:89d8:: with SMTP id c24ls3717490ljk.2.gmail; Mon, 22 Jun
 2020 23:15:39 -0700 (PDT)
X-Received: by 2002:a05:651c:299:: with SMTP id b25mr86612ljo.13.1592892939419;
        Mon, 22 Jun 2020 23:15:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592892939; cv=none;
        d=google.com; s=arc-20160816;
        b=GFY5SL+1uy9v3SUh72jV/2uAmyo9YL1pD3o5dWkHaUOpccsJUEmm88twf2x+8eZ2t8
         L36i+3hoLfnUs2n6Q9r5s6sjHYseZyDLf6lFzPr9Q5rsgMfZREI6n61vya/0MAiOZQJK
         EFz5SDQ9b8soHPGZsThoyiMyepducoClydyPTF0ZN0s50zZ1oAuzCHil4AQo1T97sDI9
         7lFsTD+xlZsqdd/4VCuBIk+NScw3UrRztAnbOYrmhdsgE/dkO3X3hr86iINywZAaq9GC
         hX6zPR4e/tv7sAIfZ7Axpw3GlwfHZvh0rhNowwYUu5w42X/6gk4a0OuxfBBq4lVZFRwM
         SOfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=l17EexH7hZVcQVS6F14pKYSKE49r3u5OBEsNhDSbAik=;
        b=wWr6/1gzJ6Jpb4LmXJ8JwBXBeWWsBDWRThtbLkeyku2BJ49dfxc7vATDtJgzSwklZx
         AcdJDb4vYu6I1dD+UOO7+9KX1/QoigpnrBMY+VCOwrZFoxsEK3GEuznTNrsY7MBvpBr7
         LZIUtufmkcspHnudpVKXDFdTzdQPRuvK2UV2asdCDlLzR63A0ws8qOGn23H1HeAOQrF5
         GD/kjXAr6QrO9Zire4pjn8Cx4ZYvo2kx6cwTuHsigCy0BXcIw+X/yG3wyiPOBMt/yvnd
         UqS+r58hOASq+/KJjM+wGRJnIMInIYoFWRWo4nfTailcT5tf5+bIXvamZS+eEssSqrFn
         fj+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id x20si1192232ljh.1.2020.06.22.23.15.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 23:15:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 2D36668AEF; Tue, 23 Jun 2020 08:15:38 +0200 (CEST)
Date: Tue, 23 Jun 2020 08:15:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Christoph Hellwig <hch@lst.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arch@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] asm-generic: Make cacheflush.h self-contained
Message-ID: <20200623061538.GB32219@lst.de>
References: <20200622234740.72825-1-natechancellor@gmail.com> <20200622234740.72825-3-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622234740.72825-3-natechancellor@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

Stephen also just sent a very similar one.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623061538.GB32219%40lst.de.

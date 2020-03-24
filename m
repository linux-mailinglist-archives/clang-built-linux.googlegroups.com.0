Return-Path: <clang-built-linux+bncBCLI747UVAFRBCGF4XZQKGQEKM5UZBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2460B190351
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 02:29:46 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id k10sf6823873plx.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 18:29:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585013385; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQ58b+8Wc7JLjvmC+TETIvEk3jaHZpyE7rRf+6bfxVvvzA5SmeV5mA7uZp27Jf2jFX
         xpghDjRO1FMbelKF6eQNr0BCqMK64XN8RF01239hvVXIfgGe3iV1PaxMHPDAEnuG5hik
         dTgRiSTT9vsE/7VO6Ekh0ZWojpjGnVjZzXCsPir5aGxhWXC70xLVGocbA4mhHKO4rSgD
         bHmhg6XpD5/YL9Xv0N+t96Tbkn5J98+a8JWoi+Aw8bfy/fkOVQsObvf01dR6X+f9KQL1
         gSyUS9EuRhTNtmCqqYBE1XZNnU92NNUktdebpRQdlZUpduwgFhAsppV/HriIbJjM3OQv
         mPQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=POdjkabnfFaRoMoY2dL4Ycpl73qM3TwzEwEzmSrwaCo=;
        b=09hbBBSqMMoB2mMa5T+zuqxROo3EHaLkZX/aRJPdrHxOjVNzoHP5dKHkoE7lfVgtU0
         DtMUnUrZxACAb7XmZh36y2DzOJyIFzQU6BLihZskYXw3crvGFbrP8YzSEDL6rVmboXoG
         LKonvqofI1kfZCNJ1PbF5USJx2z3oB1lalsSbr8H7L8DaWeGVmMfnnb/KQawwNCqwj0M
         87RttLE/r7yjeMnCUWh1nIo6KDVv+ydQGE8pl6byXqsAySBrjCSjCDj2sfKOWqa6XhWC
         I6vpEk7/kR0Mt7Uv5LzoofZHOAhpVj+wK30n3xSGOWUOQPikgqVNZkZdAUkAVOBWk2X5
         b4bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=VArAoFdS;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=POdjkabnfFaRoMoY2dL4Ycpl73qM3TwzEwEzmSrwaCo=;
        b=OAJHkPc3kOzn43hzSu+fhHqAeQvarw+Wg4bg8s9RG1VKa57dU0+VmvKnOWQoaQK7Ho
         uziolUm3YeuNNe2VAk7pvGpUfEF7r2sxGDSyaz9uX1jZ1rL54/V2nu/2ETdviDLda4mi
         p7GMA2Zgx33jQDl9kny0esJup9aUjmgcczBtDPhEXm9E6P1wLsklPGhWTgF+kyK0zJC+
         Uc20obJvEXzGgzLaufU9K9vxkStgInsar7brgCYfXAGtXfIpumoTAcNNo0VZUMbFGfyV
         LmJrguVz6NqD9qMto7PBfaPPK6FdCD+9yAAFGUWDq25kR59TNOM/r5TxoMRGww5RBKwE
         IZcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=POdjkabnfFaRoMoY2dL4Ycpl73qM3TwzEwEzmSrwaCo=;
        b=bR0pWoN6XXpzExtuXMxwkkl6uz/ov7sVklrgJi1Da1ke4GccJ5f/DDjUeadtoYBWU9
         TMTt/yuSz0dH6VJ2zf7eeb6XL4r6ixL38ZKuyJkb6ZaJP8MTvZg3vXxG6kWZBXCqmaVy
         oKpdjBjgYB+4qLUM5FgDei8sHbwIUyXwEaarqjQmX9SvLtf2YqTtc5+Jz01U73Txw9VE
         OLDenbhENs7XbOfJHZHvDQWv5q/qaiWRJJNhfluJZKghI/rXmG/lso6GEySlkBUA+qJZ
         U8jupNUspyfBEquvQ3Qhmvhx++KTFaUcP5sB2XmtsJbKQelI66Y0ntv96kCZEsoEk/fV
         wTpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1SjwA+g2Ex4oeXFvxe6V/rLdGMpsUT8QSQVk2HIPrnWN3GVqHt
	ADOMPkw7349ed2NDE4zPRyA=
X-Google-Smtp-Source: ADFU+vsdU2lhhDZvc6GPyeTrTeROf59K7B8C0XWRuE0uZfCk9CA3nHAgd4aLm14rHtOLSGALJ1iuug==
X-Received: by 2002:aa7:9838:: with SMTP id q24mr27832035pfl.135.1585013384840;
        Mon, 23 Mar 2020 18:29:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6542:: with SMTP id d2ls7677385pln.2.gmail; Mon, 23
 Mar 2020 18:29:44 -0700 (PDT)
X-Received: by 2002:a17:902:b68b:: with SMTP id c11mr23321338pls.186.1585013384389;
        Mon, 23 Mar 2020 18:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585013384; cv=none;
        d=google.com; s=arc-20160816;
        b=ddtnge0axdrhi3UJeAyJvBM+NoYhvceeXfYE4zeLtpAZk+j/p5CwuXTT88RfzQ2lez
         tPoAPbldAMgm3KnzCqedTmLYvP8QfZcucjTCrB2mKFAxH24zXXe4pjOwNSV8fKq5kq8o
         5/PrVibj6nR1d2UN3hA9vifyuC60M8FiULWfY+ZysAWKRhr77w9YR6dIatI1zItqjJek
         RnMEcp2QmY6z5mVK2++FCCdw5wZdK/asKO5rF95T5nO77BvezfTrZ+0XI1g1WHWUS6nS
         UyPUibg3QRUoEHkis+oglOYNJdXiIoQ4ANEXIgE8mQOTm3Wa3TmgfGAzuFTytqJ96t3S
         7u8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nEyo4X1sYK91e2O18OAjqLd/E3PVjuSTZjJt69djHaQ=;
        b=p2XQLbRWSdJSHz9+9t8Vh8si7RW+x81jUmjF75nxzFVERoXgzMgZZH4HF8a0LOMWdN
         CSHq936wM0uSocnsBg/cTz3LnLNTjplkydOlMHKzyEgLTV9F85CjPi20KM9M+Jam6PVM
         ZH+tPMjXI+TqO+rxXGVXRbvaj1SsV/TAIuWSAUcO++GbirqXD7czh5tzhxgUiNSxyW3g
         IOQOPz76L2HvNfmXo7Eq4wn4W8sA6u3G+6SU5XCMOnQuFfahHNXqrBABqKidBJRzXcBH
         aQ26lHkVslXiifDQDToi0Rshim9C1FX6goPSbe/Mb+1fgP009MTdr29zx5Sq+FWaaz5v
         Cahw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=VArAoFdS;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id j14si938054pgg.1.2020.03.23.18.29.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 18:29:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id d49d7c2c
	for <clang-built-linux@googlegroups.com>;
	Tue, 24 Mar 2020 01:22:38 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 1cd24c15 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Tue, 24 Mar 2020 01:22:37 +0000 (UTC)
Received: by mail-il1-f175.google.com with SMTP id k29so15325697ilg.0
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 18:29:40 -0700 (PDT)
X-Received: by 2002:a92:cd4e:: with SMTP id v14mr24886394ilq.231.1585013379684;
 Mon, 23 Mar 2020 18:29:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200324001358.4520-1-masahiroy@kernel.org> <CAHmME9rdoo2Q3n4YA59GrVEh8uaCY_0-q+QVghjgG3WwcHkmug@mail.gmail.com>
 <CAK7LNATQG4ABWxkShbgTpW78M4FYY_9Fmg2GSxXDTE51yWF=MQ@mail.gmail.com>
In-Reply-To: <CAK7LNATQG4ABWxkShbgTpW78M4FYY_9Fmg2GSxXDTE51yWF=MQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 23 Mar 2020 19:29:28 -0600
X-Gmail-Original-Message-ID: <CAHmME9psbhB8mR-DCnQw475xJLJ9SQLvX=p0LZj2c4p3WkoB_w@mail.gmail.com>
Message-ID: <CAHmME9psbhB8mR-DCnQw475xJLJ9SQLvX=p0LZj2c4p3WkoB_w@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] x86: remove always-defined CONFIG_AS_* options
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Jim Kukunas <james.t.kukunas@linux.intel.com>, 
	NeilBrown <neilb@suse.de>, Yuanhan Liu <yuanhan.liu@linux.intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=VArAoFdS;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Mon, Mar 23, 2020 at 6:53 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> The drm one was independent of the others,
> so I just sent it to drm ML separately.
> As for your 4, I just thought you would
> send a fixed version.
> But, folding everything in a series will clarify
> the patch dependency.
> OK, I will do it.

Great, thanks. The ones in that branch now are ready to go, so grab
them out of there.

> Who/which ML should I send it to?

This seems to make sense, IMHO, for x86 or just as a pull to Linus
(i.e. the "kbuild mailing list", in which case, you'd send a pull from
your tree).

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9psbhB8mR-DCnQw475xJLJ9SQLvX%3Dp0LZj2c4p3WkoB_w%40mail.gmail.com.

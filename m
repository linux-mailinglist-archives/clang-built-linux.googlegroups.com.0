Return-Path: <clang-built-linux+bncBDRZHGH43YJRBEOPTX5AKGQEMV42WOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 58105253FF0
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 09:58:09 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id jz22sf2255341ejb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 00:58:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598515089; cv=pass;
        d=google.com; s=arc-20160816;
        b=Aw4AbEuN+0g1oWo7ZyFrjhoEwJCsOIJFRw8NA+qGzxQhLP9HcNlH0p6pPEUDF+iA3S
         8bJaiGl1K186fKSB1Bt+S0MbkGxlazzGcia1PrF+RQ2p56BcHY1tKbJIdv/UOFS461c9
         2psbKiRe8SBwNaTzvhGPcgx9TwBfSqfoKyFDP4/+LPrmGp5MsnE+tS8741I3h4iDgv02
         lSL5JccHiaI60sMpIgcFsPVxvqWfFnHZ/G2I2BFpY6mc8MVsomwdTrAjvzg5GGIFO6jV
         31ZMP4GxAhnALkzevKjDEY7tjD4iJgl2ITjuzzV63GcJGYqkqsre4r0PfXd9MJQCbeds
         570w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=n1UEGpFj9Ezgj8tjnB7cGANEB+97m1YfuZRxRnS0XXk=;
        b=Ze8Ea9/n1o/u22Ziqe+GXnpWxDrx9vEcI2Lpbnq/nnlcZH4sz1BgwUrd6GF7eGzeLF
         xUSCAwsd+z79TWSmIk44mj00iid8AI46puRnahYAPcSC/on0K1dGpB5/DkSxUcb3hipy
         vAf2altJKY6Gjl0HqRvsnlzrHGvWK1sfiMsgn2RLlWaYCATpQ407cmSkbgc/Mp0lcUjR
         S3IQX3kzXMrEwlBKwUT7Z9gOET3AuTGB/tSb3yFudNiGio62fyI/Y9YczvHsCexaIXkd
         /MCy3+TTT5JGqKSqa0ov3VuM3bC+O6+Cm0LouQe48HmL4xKFcXYuF4PcgbBlep1PziHk
         yI4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="a4/JagsE";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n1UEGpFj9Ezgj8tjnB7cGANEB+97m1YfuZRxRnS0XXk=;
        b=g5wxiVTnktwhcr6yyV6hv+nMPzwY3nGX/1+3XO9SQCvUuqMFwyVQN15mw2/pm2W6QT
         sgAi3DJg0UkDzKHPE6OWEj3bIyAM1QUQSopRif95qlc+ITNfMDy0Ra8utzi56iWWQHZn
         5klJ1YF65HXdx0QBaf615xyXBNx+ToZEyh93WwX3SXg0lV3bhGpKelPxFwHjrRJeKPRM
         ffmI1e0Twjek4f69JupXhcI2r8sETtL3MgFxK9mO57qT+B7G+arYI0mW8rKcyQVITEET
         91MgUPwjLdSBxghfQ8nsfyT8XcG4KQDRrV5o87mltF4hJJE3shnLNz7WZx3aTpyx+Xxi
         4kVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n1UEGpFj9Ezgj8tjnB7cGANEB+97m1YfuZRxRnS0XXk=;
        b=IV51d+O9c0Xw/3Kj7kySSmNdc7faPwGTaIuhmBIhp8PVB8U40S0+0WyXT9nbpuIjRR
         sjOVrJI+iU5pvn+QbGnkJxbqrrLcNoV6EW3BM/l1TliwCVgu/oRU4ed19xAQxGivUf5b
         E5SOVvcpTdDRjqvTqoUBJWnIwGOckF/euV+KfpV8e+heORWZ2V71y2tcNv3j1VTa/SzX
         tsKq+lCnInXVji26rn59wJtOPk5aEGzKU1tPjJnKqOkVuzMkdC/eRtxIXUeh/LQBn+ee
         fTlJCNoU15Qfaxq77k2yRtOUaDt8uQ/pWSxGerYuW9eF1cEY5MngSGKTLbaUPMj/2Jq6
         M5zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n1UEGpFj9Ezgj8tjnB7cGANEB+97m1YfuZRxRnS0XXk=;
        b=DGSJQxnIrX4YMfY2k92pn+iHbFO9Yo4PYwPyJUHpGxDNhzJR/EcciD6WD9hIt4Wq4C
         EOak2MxEMuODaXBPF5wx1uJLKVcar+oOFpUkjU0Qq70KgwhH8paCgKCbu51TdYzBNkXH
         ygIAFti+U6HlNeBjgzOT0BDHZf9Kk0v7WsbftF6hdhWBoVGhVDiwWgYaS43u+WS/0Khh
         JK0XGqpgdxS8TQdwfMA+IMIixsrkcQunapj1b1iyMtX95CS7r4hXtTFFG2w/rbxsRPLH
         UAjuWlW4zBCWxt34Bp9Wejhwpp+rtaWkZedxXJ8sRrodclJBdC1orhkgiYacO8pcY1ts
         xVjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325aGGhFojVka0zaKMeef+1l1khmvMTex7o4vM36JKhjnvIHjfT
	7YzZIi/PWUlSA2rAHzEvC2g=
X-Google-Smtp-Source: ABdhPJyqrQpGzg12kibDW2pG1RyXqL6jQitemxy307W+xO4vfqEOYmxnhc7HlvRJ1FmE98eUFVXO6w==
X-Received: by 2002:a17:907:2717:: with SMTP id w23mr17526652ejk.236.1598515089095;
        Thu, 27 Aug 2020 00:58:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ea83:: with SMTP id d3ls1412366edo.2.gmail; Thu, 27 Aug
 2020 00:58:08 -0700 (PDT)
X-Received: by 2002:aa7:c3d3:: with SMTP id l19mr8853519edr.102.1598515088443;
        Thu, 27 Aug 2020 00:58:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598515088; cv=none;
        d=google.com; s=arc-20160816;
        b=b3xrbwnp0zdFrZjaJ0JvE4WQ0fBAAIt9WoSoSw6YY9/N1X3UL6bTyjHSm3Sz5Uk4Rt
         saYg7LF1AF3u/edwZsRvcDfbg6ywbEyzocwiTDpxYnTjBXtowNE3u/cFGcETCRwx4+RU
         l5ijYrgUbBIAsv4d0M7DCBACQtTCJoHNkorDdwWOanHgysmrMuswuQ8tLNRFJNy0041s
         afeuAWXJ4WE3plvDMs3k1n7HpjgEy33QlmmjBaaHWVU28bxxqAi2Rcj9nJabfiD4emnS
         GffVzokySiIoLvt94nAoHr3dAXHbdQ2KEVctvTIJOq0mbDQN4A1VNyxIx62grAGV+ATI
         VzjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TuLXNyha0lqg7j7m5Rp3XaQtWaFfjLEZX3AWiS0341M=;
        b=cVobsYtDz5rn9dIDdZ4bXsRA7e6s/yg5n5KJkdvdfUWjVpQ12nbh4fB+uXSg/gzPvP
         pJTp2ppyOSPws//GHKOCZdGlR56KxLNfvcbbVSWLxRr6qNZK9oPnMSgVrSnEhrkoELD5
         JwTGkrgfW/8DDYMFfdCXH10V6IqRETFtIUv9g+V7e9f8MuhSIfsDTYDhuoXdM00KpSdr
         52aG0QkoGw7GbxiSMouApL1wNWs0s92x2+aKVzB1mP78/fZ+JSqzV9omieffW8fHIxUW
         CNKctVwVpwZmD8jq8djqQUblzG3s1c/1YuiFME96ItUSRzzNPcDbRUExeO5zRs0nN2lb
         L8fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="a4/JagsE";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id e13si56378ejd.1.2020.08.27.00.58.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 00:58:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id v9so5357088ljk.6
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 00:58:08 -0700 (PDT)
X-Received: by 2002:a2e:80c9:: with SMTP id r9mr8115988ljg.95.1598515088235;
 Thu, 27 Aug 2020 00:58:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200825143540.2948637-1-ndesaulniers@google.com>
In-Reply-To: <20200825143540.2948637-1-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 27 Aug 2020 09:57:57 +0200
Message-ID: <CANiq72n_c2NQaTezik6ozA-Q_Pow0CrnuHo8xKf8KMSe=3X71Q@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: add LLVM maintainers
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="a4/JagsE";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, Aug 25, 2020 at 4:36 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Nominate Nathan and myself to be point of contact for clang/LLVM related
> support, after a poll at the LLVM BoF at Linux Plumbers Conf 2020.
>
> While corporate sponsorship is beneficial, its important to not entrust
> the keys to the nukes with any one entity. Should Nathan and I find
> ourselves at the same employer, I would gladly step down.

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72n_c2NQaTezik6ozA-Q_Pow0CrnuHo8xKf8KMSe%3D3X71Q%40mail.gmail.com.

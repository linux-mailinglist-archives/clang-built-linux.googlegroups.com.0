Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBDGW3DWAKGQEFPJ7TIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id E15A1CA80F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 19:08:28 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id q10sf1373793wro.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 10:08:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570122508; cv=pass;
        d=google.com; s=arc-20160816;
        b=QM97vAFgLU0EV1Su0SurlTJrGkQKF212VYwd9Xx+C//LYge5xV7U7anfLn2bwqQLN0
         LQg7ik1oG3mEFP8xIfWKEOrITDfTaRbpxppscc3nPVd0eaK9VQIGFXJRUn0E0uZlad3l
         RuPmQPZI60QYphyxK8Ba38EQ1WswE+8eiewuGMn+M5oY2/dJO9A6tyEOaZaH1g3EANxv
         ywMv7rQYUvTXj9sQzW4c7VkwbBfcEwBKnkzs0DVVyT+t1odOZMyq1kjg+XMJTwJGm+rj
         1kq4lRi8c5RN/9BBFlSvB2AXbZ4E5vuZ4bB2zmzds+F31I63CVTKg/8X+lYD2oCQ07kd
         akaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=P7hyijfo5Ng4hJilZ6wBruCxeynk6+Y65FVzwGUpge8=;
        b=pxANlfQObsBXqJz//0imle7UpAHbB9zLISk67PxmwSJkF5M20oyH3CGCmiMjCnbo8H
         TFyvimbEqhF7d5QcHoeGroiql+/LM3LeS7INP/RH+I9MmeGiGI7b2DXEql8+QekiaJsG
         ScPyvQTpK06aqO2k/YzHuay8HJpoH4zGwa0HyyfRSjpBoDL35zr7PWENfrwtl1uw0hAC
         HtAePgso5Vp1Lq/zy0o9bdqQQJyUXxN9MfY9GkZM3my6DdKVpvl0qLpA8jS1Z0q/9+gR
         H+naWFlfqjgWAxgV0hepkIZct4BsPSdTyecv6sL0rAAQZQUY2uxBxtuSokqfLuKtm/m+
         d57Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=JQlxhcyH;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P7hyijfo5Ng4hJilZ6wBruCxeynk6+Y65FVzwGUpge8=;
        b=sFFkiLnkA6BmpYsUhCSALuRmHgtVW98VHNV/xQ2dDyMrZoN5N6tA2Wh5i0fBZx2Vn3
         PsLV+6fFWZJSkPLJLUi+5tbYkzS6cKZWaPN3GTTfacSDiDu+BTP/E3UWydIHnme4mYl7
         9yYHo5Wg/YefW0RTSTREbjTM7JrgOzX+mRjBs3caJj7rITCnxHaQp2wu27gdVM5g0WQA
         nVF8HKib5AmGHnAlfzq/IfSpFoZd2TriVDoJ+TnfMrv3WisgPAh3GPCxcQhS2VwmnDlp
         l7GGdY67kZrMylaEJG4Q8JVqy7QGIyDQkfrRTdxNcwVrWI4Zn1IsveeIlJoGK03qE9+f
         DRMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P7hyijfo5Ng4hJilZ6wBruCxeynk6+Y65FVzwGUpge8=;
        b=ShuDmcavbzAmAIdb98o/obJc2B69gA62YXO7H85rLcmkxXGDOkH8C5QqcPhNP4BNvt
         1ukunLHLHBlk/r3/b0svJYijauZyWS/CmZaUtUTrO6q8zgAfAOwxX47Bo8LAg67omREA
         Fh4vmGvlNERf8HNyM+NNYvHdsDM+Gdfnjo7DaJeuSqR+bAz029JQhKmjde9cL9LyqpEZ
         hVbpuPAv54htoOzCaS4nGZUHxHnZdtIYqSEeJpvJLA0clGpLl/mmKdV/FOnbRdGSN35Z
         501oWJIzQ4CCCcLE4Voi+3ufVPF2n8ichrfk6nrmsjb4hcCbXhYpm918BjjZ3ob+wZTV
         5rqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOgvq5xBxz90Lk45ajQnMD4H/Yl2qbY29Tjy7KdOMN9zQOSR1Q
	z+UKfPcMKjlYh0BJoWAiuI0=
X-Google-Smtp-Source: APXvYqz/lLGp5j0wAj/6FR9ZXL+nNipEqWbMln7LHWfO1RkZQ74hjQ4IRGvBTSCSRntdwjWgjJOTBg==
X-Received: by 2002:a05:600c:252:: with SMTP id 18mr7147618wmj.4.1570122508583;
        Thu, 03 Oct 2019 10:08:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e304:: with SMTP id b4ls1950987wrj.14.gmail; Thu, 03 Oct
 2019 10:08:28 -0700 (PDT)
X-Received: by 2002:a05:6000:82:: with SMTP id m2mr3248935wrx.241.1570122508001;
        Thu, 03 Oct 2019 10:08:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570122507; cv=none;
        d=google.com; s=arc-20160816;
        b=LsOxbDkJzEN74BSWRpqLOQq5G9af/LdVTjFjOFGPQTu7+mIyAQAxCnHUFcYOMpUuRm
         7oa/lEdwaYqtyX/Mwkz8qQPQI2VtdIJij6PRsMcg49g+adDJKDY4J7ZuDgNavVei1vlF
         ksju5wGeMjmdqRSr2tr0WHlAEE7hGjha9//5CgyOp5nmQJt0839JC/qAeWIPC29sE1Aw
         zxod3Jdgblne6/pKr3BLLlCyQrrFBJW2J5mufefOEP1wi5y2Q+bcgknBMdUoLW1IFRU0
         bJ8dZJhJ+sFirE2RLk7+0JNDhDqzexLooifgQOzo2Id0ZqkrMbSecrJe8j3WkTddppH6
         nFJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xGPNBFqVYtxez447o7VfzpEEdWGUXuNgcxnMZZtHxhw=;
        b=lTmdW+Ze6rV1lchPtmTEQicHOpKgc2HyefctCKPZrURR/Kv1UEdaR9mEDsr6ik80AU
         JiRGuegLkwJrxbAVd6Vrh2oogSCdn0yojWI75cWPvWxFgtmDgiLAkia1LNp2T8aNzbQx
         yit6uURvTKnAR67ZGebS/XC5HC1fbhnu0DdYNbyLe6fMlKIS4uAUKiEKKnZhKesNvdJp
         3xnpVDm8dRc16zBTit30hdtwuNk55KqGUPasqDD4SN5s8tXwSNI+lhx6TgkbCbviLoC6
         mp9Us86J9GsvYwWe2VUjj7qsBv96+NcGyVJ7xmG89fWXpiSjyPnHHbGNCGhLaYR1bzPQ
         +D+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=JQlxhcyH;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id x8si291387wmk.2.2019.10.03.10.08.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:08:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id v24so3622251ljj.3
        for <clang-built-linux@googlegroups.com>; Thu, 03 Oct 2019 10:08:27 -0700 (PDT)
X-Received: by 2002:a2e:8052:: with SMTP id p18mr6655556ljg.198.1570122507128;
        Thu, 03 Oct 2019 10:08:27 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id p3sm670540ljn.78.2019.10.03.10.08.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:08:26 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id j19so3637928lja.1
        for <clang-built-linux@googlegroups.com>; Thu, 03 Oct 2019 10:08:26 -0700 (PDT)
X-Received: by 2002:a2e:86d5:: with SMTP id n21mr6759265ljj.1.1570122505822;
 Thu, 03 Oct 2019 10:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
 <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
 <CAK7LNARM2jVSdgCDJWDbvVxYLiUR_CFgTPg0nxzbCszSKcx+pg@mail.gmail.com> <CAHk-=wiMm3rN15WmiAqMHjC-pakL_b8qgWsPPri0+YLFORT-ZA@mail.gmail.com>
In-Reply-To: <CAHk-=wiMm3rN15WmiAqMHjC-pakL_b8qgWsPPri0+YLFORT-ZA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 3 Oct 2019 10:08:09 -0700
X-Gmail-Original-Message-ID: <CAHk-=whkB+g0R0JqLB+Y4piUZf9A8P1ugi5T92LjFLNY+epBeg@mail.gmail.com>
Message-ID: <CAHk-=whkB+g0R0JqLB+Y4piUZf9A8P1ugi5T92LjFLNY+epBeg@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=JQlxhcyH;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Thu, Oct 3, 2019 at 10:01 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> If this is purely about the fact that x86 is different from other
> architectures, then let's remove the "compiler can do stupid things"
> option on x86 too. It was never clear that it was a huge advantage.

Side note: what might be an actual advantage would be to have a mode
where you see when the compiler would choose to not inline things.

Maybe we have things that are marked "inline" that simply shouldn't
be. We do tend to have this history of adding small helper functions
to header files, and then they grow and grow and grow. And now they
shouldn't be in a header file any more, but they still are.

So having a "compiler doesn't want to inline this" flag might be
useful for finding those, but it might also be useful for people
looking for what triggers bugs.

But honestly, the last time I saw somebody argue for "I don't want
inlining", it was the broken "I want to compiler the kernel with no
optimizations so that it's easier to look at the resulting code". That
was just a _bad_ bad patch. And if it is concerns like that that are
driving this "compiler doesn't have to inline", then we should stop it
immediately.

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhkB%2Bg0R0JqLB%2BY4piUZf9A8P1ugi5T92LjFLNY%2BepBeg%40mail.gmail.com.

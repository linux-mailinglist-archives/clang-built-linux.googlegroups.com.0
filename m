Return-Path: <clang-built-linux+bncBDRZHGH43YJRBJFOVHWQKGQEH272EZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id D7152DD5BE
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Oct 2019 02:21:56 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id t13sf4465013edr.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 17:21:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571444516; cv=pass;
        d=google.com; s=arc-20160816;
        b=lSRMJB6//bomSC3LgCvmHPXfnieAlMdEROmQKBBLcyHDSNlujaSCP5ns5XSibbU5jq
         KRCLyuxZ1nnEyM30wKKk4uHMEcchJE1hY8wQbrxK4ySIJQXwjo+k62lkLXvBuRnyeY0G
         Kv4foNVbo520GVK4bB4qqRFSNhJ6WMThDODu0aSyQtQv8m+R2Z2OfBSjwK5Yx6FTZfLs
         NGOsjARhch0gvBjuR2x0tn/c3jarIKI8VffvhjM0CsmAUthw4cMagLlmpME9WCRKmJRt
         /xMYVKnWSK7Mf5W2x8SgLa/eZBWoEoJnEP1Xt6ZgqD6+iOomzV0U8UMbwv8uFkiwGlwZ
         3bbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=rN8nS3YC/gfLjXrd8leyT2Nv30ePeZpKanj+v0V1Gyc=;
        b=0CuoxWFa/hP2Wy+3U1C0+K50qUFi2OjHQQc7eUiRmA3KYnEOs1o7xy6nbL5yqIbIOp
         lN5RXwEaL7VCg9aI+ZiDqhwNFn9spQlMZ7Wa8EPM3/nRO9rGHUdBMkp5T8/+jKrfvKOF
         /lVB+Jzytl9hkH+guadsVWvGzmefhaHuQ65MyoHm3FnOl4aJTXHOYxFM67Ft/L5zR6T1
         +QKi3RKrUz8dJLZ5DprK4P/VKWCME9DkXVEwe3YVn4A8WBuJyOxm5blSyLuEIqjaYBxL
         4pXHOeVoxs3iYnwxEtTQWKt+KCP+TnDr1MjS3e4nK5epPVDhImiNByJPwOE2pmIIGnCE
         tJ6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SJhBGhz9;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rN8nS3YC/gfLjXrd8leyT2Nv30ePeZpKanj+v0V1Gyc=;
        b=qycoHNI/odDvt0ik8CNl0Nb5YvSH0kNb5f3gqZira4yQF3zRukF7xw7zWS8RMR83ds
         na72hx36TUz6SZIu4seQxhwCuU9TQ+XnzvUAGAehyysK8nSJQQ4u7A7fmHmbkHjsMQbG
         ZPnAKYuSsy/Kb174/ur7Ri0eZE42so/31HMFmzxC6KR56KOllz5sNlbA2Msrj/EPFvnK
         HN053jykbeAEcbLZPrr5ZOeuXdJrav7PL0pbYiQ/4+E0MNIEBtwxPXLIeOKtvt0dKpiZ
         6+yWAPwowHGBQP+ZtsWRySxyrvUZ1cHqXeg+pOP6BKwRdKrAMFhuKTjzhA3/qYM6ocY0
         o1bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rN8nS3YC/gfLjXrd8leyT2Nv30ePeZpKanj+v0V1Gyc=;
        b=UodBmTAFm08+xgSAx+BBOltQ6oN5C3AERXkbyM7FvLuZebLMWPQ2yaK2k/7FkGmhPM
         hXEFdyay/F2Qj4Ww3u5myePAsExG0U/58Zm+g1kfM/DUGktuO8kvjhS5tSmmKcFgB+YR
         B8sCjOFonlAqtLR3wajBwyNOx8M642XUIrs15ECHiOFy9XnQvXHbhD09T4HcqtAo7RFG
         Uv6++9XdH67qDILFz9Kqj04tvWZ9mSgG494KaEMhSI1Rqs2ggytcN6eNOn+Euhok9dyi
         bTWGrP+am73X2jxciJVSeT4EmYOrxeSvRipRjG9HOCydvuWU6RvD2Kp+nU8rf083ANhs
         pKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rN8nS3YC/gfLjXrd8leyT2Nv30ePeZpKanj+v0V1Gyc=;
        b=eFebxBg/2AyH/6K/PHPPSqfdVquJBwXqlIk3vGdZEoBzHgQTQ+qSlmleDKN3jqF9/K
         MmITS30j/i1v34JUK9rTTLi+/yoRsCO4RIGzveMAPFiZO2k+cjQMeU2AXc21U1aZHcu4
         ++gZ/HMSvdicJbG2mThA2+laVI4xD9ntq8UDVMDZHQsHnxt4wkZW07g9C4CMZ5lN6DE4
         ttUv6dIkI2EfxwtmtQWq6mqleM7WxLdVOpPo2M6XBr+jffXJxM2SKtHXIjrwjl4J1O49
         DhR0RfbrAQ0Wv9plxpLYuLLDMMw19NoF2Pa2JYNLClM4sscGxmw90M2HIdtx7c6lxo8S
         SgXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVlbY5CNCZr3Ny/hxOZQk2FM1uOhyrIzs8m097Mw3uJ3Z7b83e9
	qk1oRafmr47tYLhZB2ncFR8=
X-Google-Smtp-Source: APXvYqz05ffDWFgYPteXRsp5p0sZFUgIMuQV1q0FDGIxSUe2uOyMGYcuHs0JeKzzBXre8lYvGRzhPw==
X-Received: by 2002:a17:906:194d:: with SMTP id b13mr11391913eje.199.1571444516492;
        Fri, 18 Oct 2019 17:21:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c44d:: with SMTP id n13ls1779774edr.7.gmail; Fri, 18 Oct
 2019 17:21:55 -0700 (PDT)
X-Received: by 2002:aa7:c6cf:: with SMTP id b15mr12578326eds.215.1571444515944;
        Fri, 18 Oct 2019 17:21:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571444515; cv=none;
        d=google.com; s=arc-20160816;
        b=qYVwr3nas3Hyie4U1BtbIRiY/zkNQuSGKlCqo3GVvkFO4y3ExvuuY+qCCraCjsMEu4
         vStvH7ZzmfOg3430YLP++diCL78nNNKrmKBBECmHVo1Orur4Kw5CYfx/Mg76TW3t21RD
         CLTDCORST66CIRvOIY0U0/BmwIM6lN8w1qwa7khnJDzty3xntwHAl2wRnX5LHo46exC8
         51/ng7Aqea4igd00bnTE+k+sZQvMej1MizjHr+5YSMKKGb8sdqWW8XV6UN/fYKcAUHb6
         VPJem2RfZIXlHoM2H3h2k7gJtAjKQWPNtZc9IUSwH1fTeISRacFveuY/77sn0aQrQQjo
         z+Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZqICylESWKf0IpOr+KHkluRNlL0wf5TguV6mXdP4QGA=;
        b=DtYkTawxpRqU+mO1ltyl5Xn4KtSIkFcdqz010CV99Uuf+t10LxihCvT6AP3Un60Lqq
         e8g7nKGDY78a9oCRAxmxFf+Ss90LFNsKw1QqT3dh7J7GJTwlLVDTdOQsl3t8gVrRsy52
         uRrux1SNkdYuYHZOekq8cnXKhwwF7MAECkKm7kquiROYBNnE7JXyKD89tE9p1LahWoKk
         RJnbGS/2uF6dKEnxyD6XlosYqjE0tSEA3whYZLZ4uYNz9TbfHStCH3hMFu68OTwmx9QD
         TBBZlzffTnoisjdxDfbhLSWg8qPDKpDH8x23Tu6rQ1xIg67LwwIxLimXBJYNW6GyX3bA
         3brQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SJhBGhz9;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id d14si420195edb.4.2019.10.18.17.21.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 17:21:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id w6so5950614lfl.2
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 17:21:55 -0700 (PDT)
X-Received: by 2002:ac2:55b4:: with SMTP id y20mr7590271lfg.173.1571444515448;
 Fri, 18 Oct 2019 17:21:55 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com> <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
 <CABCJKud6+F=yhTo6xTXkHhtLWcSE99K=NcfKW_5E4swS4seKMw@mail.gmail.com>
 <CANiq72=PSzufQkW+2fikdDfZ5ZR1sw2epvxv--mytWZkTZQ9sg@mail.gmail.com> <CAKwvOdkqfbXVQ8dwoT5RVza6bZw3cBQUEGcuRHu0-LhObkg--w@mail.gmail.com>
In-Reply-To: <CAKwvOdkqfbXVQ8dwoT5RVza6bZw3cBQUEGcuRHu0-LhObkg--w@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 19 Oct 2019 02:21:44 +0200
Message-ID: <CANiq72m_+YLLWuRGi=yZBAUj2WHSbw9E+jQ02LbXyq3b12Vb6g@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SJhBGhz9;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Oct 18, 2019 at 10:33 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Sami pointed out to me off thread that __has_attribute would only
> check `no_sanitize`, not `shadow-call-stack`.  So maybe best to keep
> the definition here (include/linux/compiler-clang.h), but wrapped in a
> `__has_feature` check so that Clang 6.0 doesn't start complaining.

Ah, good point -- agreed!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m_%2BYLLWuRGi%3DyZBAUj2WHSbw9E%2BjQ02LbXyq3b12Vb6g%40mail.gmail.com.

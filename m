Return-Path: <clang-built-linux+bncBAABB2OT6T6QKGQEZAY374A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9044F2C2B9C
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 16:42:34 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id t13sf13963551plo.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 07:42:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606232553; cv=pass;
        d=google.com; s=arc-20160816;
        b=d6B3PV2h0q5eEbxwm3AmMRh1thJCMzFQTJ1NzRuEgIjID4zDI5EUUrwGEbv1IyoB1/
         OnmJw+z9KaqKLOGrWOuLIEeHwS3fSWZUiG55YsAVgQeOF4IHxuj120L6aOp2P/7em4GW
         oWXA/wyvSjyP8wsMeiNy5QHqy4My0VqE7myAcVOrq0Y36ogh2Gdx47fZcPnjLE2tG6Q2
         apQEJhzBNuye7j5aVrSDQDAffr9iiqwHJyGZ1k4IexuXxRGnT/Yh5sqlHV9m2QmEXdHZ
         riH6OCnxwaoWnDAWSJM7cjM0NUFKa2x+gBL7YIAWiqa9jkS0tgcDPAw7DRlcHbwXFngb
         AVTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=QSXTy/k4FeQcP+bf3TJkSszAsNBbEWNgmKtDl7dedLw=;
        b=zt60QE2eRUXp2DaNxT8iOy7bRtdCBvlFsOtwzU+h5oAlbrhDgU/fLpu4OjmthrGZLq
         PJyZ+2PHsYqAW70vpTa6UD+Xf1kGvir+/SiMDOQN1yU8gt6k/8kB8iUHSbfLs1kv2Azc
         CvdgPbiEeTIk/CyvnAqAbeaQcxQ9vQD/e0Iouqv6kGaN9AKGikZtakK03z6e1sDlKGXC
         d0dUvD2nKG/4uvJLfMzG8NAeK8nPSOikp14+rrG1tbUStBID+lbihSGM4KyZwWQPVNdI
         vhlb2DPIN4W0XO+NKFZ7FQfkwPNyo07iOWZMWdTD8B6LO5qmr0PV8TlWPVQJTVchMphm
         QFyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QHKwg8nz;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSXTy/k4FeQcP+bf3TJkSszAsNBbEWNgmKtDl7dedLw=;
        b=mUCJpJ/YgHErRuopyYPMcpH0hjl6qUJV9jHvO3OvbwIRGLQNiDHtBdx0K52j2WD8Ox
         XVbfbJE2o9QyMHReIzuWilIPrO4MZI7xyiiwA+hnUSfU4JRdw/kWSmgCwG3AWxlHN7ch
         xYIG8ojmkizjesyIDpizlqbnduOKV5G8nf14YPYhfhdalqKiG1Uu97roH+h6ecUiFvRl
         tHbYJD86MO44T3s91MSL0XnhbKvWT/7ZZFwDMS1HtE15A3ef1oEiHvOlWDiON0UoIXq+
         1SznHGxTMMEIjeBbn2SZXjkXRckaxgPUDVqp6wy/qCMw489pK9wJRIMA6KtpWx7IAgay
         HoQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSXTy/k4FeQcP+bf3TJkSszAsNBbEWNgmKtDl7dedLw=;
        b=sSszJtLOfH3CxMivn2IAWI+p8HwvBvfaSx0lZMO6WmqcxypFEg4n1oh3GfmUjVqWCa
         xLpESZsWjy49tytATzbVt07Pwic33gL0P7Yc9kx8rbQ3Dbiy9WOTakmmMISPPofgV6Lz
         KWwf4bUSuh153IXatzGKBFSFP02NRGmqhMDcKIn6Fsnwmr9WLNiHtrd/r5ghytp/aXW1
         l/rShUPmxNDNPS6z9/IYLMcT/Y06dKv0euLeDwJ1rB/mfDo+asAn1P8SjIP76hdM2Qwo
         TKhArCs6zIO/Gx5xAvcL89taBXjrkcMDXX6jAWKqraDyTu/Yjs+ohVQzMYv+QMjyNCAI
         16HA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gWg63NizehGtk931WdPabyieN4u4JZw/GCz63imwdxIlUzbb2
	D9rifnGem98DA1nFiFuzO6Y=
X-Google-Smtp-Source: ABdhPJwOJBDeq9WoDw7hAzvc5PVO8ytdXErqAVLHwLPOllXyIVlCqZWMTERxzQInOXbmMeCWhE8Whg==
X-Received: by 2002:a17:90b:4b87:: with SMTP id lr7mr5533440pjb.40.1606232553282;
        Tue, 24 Nov 2020 07:42:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b23:: with SMTP id 35ls2099898pgl.11.gmail; Tue, 24 Nov
 2020 07:42:32 -0800 (PST)
X-Received: by 2002:a65:688a:: with SMTP id e10mr4185206pgt.347.1606232552692;
        Tue, 24 Nov 2020 07:42:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606232552; cv=none;
        d=google.com; s=arc-20160816;
        b=U23CmJ3OK74Da6y8bdAzKZ3jBzqVo3xvUmFX59HWeHjR4ldHmUV9gwIFrk0Ev49lCZ
         NBh/CFl5ajTBcHzzz1NdlTLZfaIHGvAm46ScGB0i9uwl+Gw6r4DlQQYnCAPwJHjyYGqo
         uJSSS0j+eL4D3e4HDioszZwsq15mubDyNIwoqqQm1qh+XDm8kAdWWeRzPH9eEOIWdzoQ
         gJ4QN44Sod/XcN2Fxdoe8SGGdSV2yfp5EoscJG2AdH54CGz6XJ2yQHrY4OWcn/z8SFyg
         W3oYFyOxwZ1a9ebSCtUt7zpM2WrvqydQfwHlwjuQ9uVVAvbcDo07tsq8k8fUrVWENHmR
         UcZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YJiTT4Rd0tsD1hKWmmZ17YH5hfzFDHE4RzRGQrnIodI=;
        b=nu9LqEo+K/0ask7ru8urHr1X49++FWLaEkOYLw7+Zyylydvpe6tDZmdqu4tRgPQ4Ep
         dqad+zH/IkbX+5zm8yNRHJyDl4NQnUCzrIBFOaQy2kVL0JlUDFD2AgR60XhA0/4UzSIb
         pfq93FctLP69AvXLU6UlcQK5TyVBlgZXc1pN1suSHCjvTmp3DCZA2k8XjpMvNQLIexvF
         JaNn02u3VrK2aXxIAocV/wZhybzZ+7rEZwfRz0ecDENm7NpJbBKz9jp0OYbCN4XlZVm8
         ll22rS7iXjrxBqrZXfSCdLo+KwHGgu0Flz9k7/ORr7gHhXJRe9g+xLGWbj3K7/r5wqBd
         4Qdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QHKwg8nz;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si1028608pgq.2.2020.11.24.07.42.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 07:42:32 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0DA372086A
	for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 15:42:32 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id l36so19741525ota.4
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 07:42:32 -0800 (PST)
X-Received: by 2002:a9d:6317:: with SMTP id q23mr3464481otk.251.1606232551258;
 Tue, 24 Nov 2020 07:42:31 -0800 (PST)
MIME-Version: 1.0
References: <20201026220331.3896226-1-arnd@kernel.org> <20201027014219.GA4058050@ubuntu-m3-large-x86>
 <CAK7LNARSn8D_0Gq3072SrD5ijzaqjLGxN=ttLZp5ay-G+adFUQ@mail.gmail.com>
In-Reply-To: <CAK7LNARSn8D_0Gq3072SrD5ijzaqjLGxN=ttLZp5ay-G+adFUQ@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 24 Nov 2020 16:42:15 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3xXtMjTQxhsSNxb5cE6xTpH_+XV-6RqS+cRRh3RoJ3Kw@mail.gmail.com>
Message-ID: <CAK8P3a3xXtMjTQxhsSNxb5cE6xTpH_+XV-6RqS+cRRh3RoJ3Kw@mail.gmail.com>
Subject: Re: [PATCH 1/2] Makefile.extrawarn: move -Wcast-align to W=3
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QHKwg8nz;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Nov 23, 2020 at 12:18 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Applied to linux-kbuild. Thanks.
>
> But, I think people already tend to ignore W=2 warnings.

Yes, this is what I was trying to change with this series and a couple of other
patches I sent. When all the warnings from commonly included headers are
gone, W=2 actually becomes somewhat useful.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3xXtMjTQxhsSNxb5cE6xTpH_%2BXV-6RqS%2BcRRh3RoJ3Kw%40mail.gmail.com.

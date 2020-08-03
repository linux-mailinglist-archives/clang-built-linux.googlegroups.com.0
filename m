Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBNHHT34QKGQENINWR3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD00239FCC
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 08:50:30 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id s2sf26920771plr.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 23:50:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596437428; cv=pass;
        d=google.com; s=arc-20160816;
        b=ec97lvrF1AT0GgYLOdW782ljct9kc51oo0XWIP9i0o+cHFYPETcTN7ACSRqlZsP7k/
         yI43VL0Xb137lXEglVuDdtvt6ML6DeYKq8HrR8fDnMikKVX9jQ1DnXzaXDjgi8IN4kQQ
         46rZMV8jUhcQpxLmW6+sjrJXIDCE96hAG2LuoYkF7wC9fWRQuyXhehytnDZz4XyhFsqO
         roQiDy+zvLAZIHda2CZS9prh9C9vQy+iqPBN5TzFz855i8wTNK0J34PoT2GZtCCOExMB
         jP8E+UcbKXnJijnJUeLTQsZwVkiTFN6sk66zpmaOmObQuyAhSQVHAbd/YBb3s5ivBEGR
         Cncw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kT5Hu/v1P7de1Xbk7ORRuz0YUkcUA8doLGuJ4/jyJx8=;
        b=c3OWnAWSFFqVlv4umIG29n24s96KVqQYWsklQTF+lDbaI1IH66jifMnl+R3O9ZZina
         uLNm1afF7QcFB5h/4JWCaW2HN/QwsWbA8HyECGx1uV3SMi9EZK4NytLBXOEejdEtrjlk
         G8heimNDiA93xmwPgUle6VQtU2ul8h1HSloRGyTRDtwc1NmyIUgV/N4n3oN49kFX79a5
         gAKTTVGWfJJ+DxZpWMM+rBDI7Q2IS71ewtDKa15Ywf2Pe6MQIcXeWlmFlZtIE0NPRWF1
         RwULR7Y081GbZt4vhy4smN3NHqBil+kbgaiyhKPcq0Vf42rOnAWdsPBGnY8cthq/bW+l
         0Kxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HjvwRpvo;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kT5Hu/v1P7de1Xbk7ORRuz0YUkcUA8doLGuJ4/jyJx8=;
        b=P4Zsmix0Oqm2eUnIUIfZHejELnN3mstWhYyG/VnfxwcGsXTYjxxyRzLs0NA3wvIRug
         67kc0dqwhwDnxMBU+4Q0Mx00wj5rKcpUXnCFYozgXL78aM2ftpFCC0InZ2djUJYWIAnk
         jEHaHbKN5v6SKdZOZoG6fTOXMqYGr7nq6XPpBAcE898zk3HKmLJKK3fzzsmae9LDRCa6
         U74Bl0ckttB9bS/b/2S3KBYhIsUShhErfES6JyNRsx4ODSyJTk91BcU+k6QJBOHqzS9w
         TRH0cqVqqAoi/Lqr1a8Iemc5W2rcK/82DuUz3qDyp3QEIXYqR7iT9HuZmnZkDYQu7TEO
         sxGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kT5Hu/v1P7de1Xbk7ORRuz0YUkcUA8doLGuJ4/jyJx8=;
        b=D3mIQDIdGdV8cpfCTVkNmb//0SSNUORbedHW67EDoQSmhNKGXY9EZWrqDGbqhE/e7M
         j/uVmxRHa65c/0GX4pzNiJkE1uhSGJqyehfCvswFYj5C9jdM2vlA+1xoql1cv9zlbomS
         OhonxlpWAEL/V+FZXMvDnRV/ZeeJ4ANEclhuuEPEQbHrFKPuSEl+rqHajdKHd166F29Z
         ZiYaAKl8kxlFItlfLdfiBwlVBlnDOmfFK9OGk1HSvYguxp9VPpkzyXF5a5kcJpl8rUeU
         ss83ppe1HDtnstICRk6PuHEcutpuhmlN6TMhhTuN/wtQzSTUNCO+scvQRm8BwQh7ftNq
         orlw==
X-Gm-Message-State: AOAM530qQr3gJHc5O6FkcfJNQeQ8wVZAsENIcocEYX/FZ448BoGY+/zF
	Lp5nbCKUU8Stj03eSJ0Eu/Y=
X-Google-Smtp-Source: ABdhPJw3SaaydiSTffztU4+nD7AVnCfsGwPBYE4ULLmU85VJcZCtGPOuEqtC2Y2dPiISN7UN3OIJQg==
X-Received: by 2002:a17:90a:216a:: with SMTP id a97mr12537845pje.144.1596437428715;
        Sun, 02 Aug 2020 23:50:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a4c:: with SMTP id x12ls2287786plv.7.gmail; Sun, 02
 Aug 2020 23:50:28 -0700 (PDT)
X-Received: by 2002:a17:902:6b45:: with SMTP id g5mr13751604plt.42.1596437428192;
        Sun, 02 Aug 2020 23:50:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596437428; cv=none;
        d=google.com; s=arc-20160816;
        b=glpEUvey1M+Qypa5+MQX12nJfcJxA8/nkjIJkL6cipGzruwryJShZf27R7LXpbmitc
         3dCNcAG7CsTLLhFzpcHqt8d2lr86c8WtuT3EQd4y6tlPd6rL5UPnAXkjZ6Gh++nZ7Mxo
         ESOuZ0C8hLPgSxzkLJWujPhzBst0zDMxaLfg6n+SZ9YUF2RhtXFGExugoQl8viaXXQfm
         L0c71ieAyAQ9Dq9eaoQrfGgv/qHlO+0/2VbCqO1O8yCZBdX0i8oDHl05chypXBsY9lpd
         bYI6Nr3VxsmR7kFrdZj3HoLFWzLgY93kTyYGQBX2mdLCdJOHk5nnSIISaicmjgubSMa+
         Chog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4KSdlAYLfq6oYXP5DVeyrt3CYvkgO3dsvD8hzUOr0Pg=;
        b=JVqWjikVhvoX2b3SWSyTt1+cgK/RS2VdpRboPiuKipEkiNwvAS9B/J6+C8oxQcp54M
         87/k5D5522jJaRsC3xvUKvb+xAcetmFHgUgCBra7Iiaeuk5HPB3Ts9wwwFswfx08Gwtf
         NTagGxvtLiS70Bh7lWYh5MZRnzpPUKtb1vMF+ObEh9T8nIJUOaqVNDwTGrn/ROw3TCZ1
         Z00r+ZHEO5k8SPpyjrSssADDjJIcLD8P8KhiTU6IFWu1ouU2ARn8E/4avYQAjl8OMoF8
         9BWCkFPAnxd23Z0WQbwSRTDYqROVrueDsynxMl0BY8XDg3KJ4NyqOPbhafvuTvXdm209
         FxsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HjvwRpvo;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id v5si670979plo.4.2020.08.02.23.50.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2020 23:50:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id q9so11511203oth.5
        for <clang-built-linux@googlegroups.com>; Sun, 02 Aug 2020 23:50:28 -0700 (PDT)
X-Received: by 2002:a05:6830:1612:: with SMTP id g18mr11624412otr.251.1596437427272;
 Sun, 02 Aug 2020 23:50:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200803064512.85589-1-wenhu.wang@vivo.com>
In-Reply-To: <20200803064512.85589-1-wenhu.wang@vivo.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 Aug 2020 08:50:15 +0200
Message-ID: <CANpmjNNH7Szgnbg+7Q_TGCma6z4OXcSELtvgvndx=6zvok=sAA@mail.gmail.com>
Subject: Re: [PATCH] doc: kcsan: add support info of gcc for kcsan
To: Wang Wenhu <wenhu.wang@vivo.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HjvwRpvo;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::341 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Mon, 3 Aug 2020 at 08:45, Wang Wenhu <wenhu.wang@vivo.com> wrote:
>
> KCSAN is also supported in GCC version 7.3.0 or later.
> For Clang, the supported versions are 7.0.0 and later.
>
> Signed-off-by: Wang Wenhu <wenhu.wang@vivo.com>
> ---

Nack.

Did you mean K-A-SAN?

In which case this is the wrong file (kasan.rst also has the right
information FWIW).

>  Documentation/dev-tools/kcsan.rst | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/dev-tools/kcsan.rst b/Documentation/dev-tools/kcsan.rst
> index b38379f06194..05a4578839cf 100644
> --- a/Documentation/dev-tools/kcsan.rst
> +++ b/Documentation/dev-tools/kcsan.rst
> @@ -8,7 +8,8 @@ approach to detect races. KCSAN's primary purpose is to detect `data races`_.
>  Usage
>  -----
>
> -KCSAN requires Clang version 11 or later.
> +KCSAN is supported in both GCC and Clang. With GCC it requires version 7.3.0
> +or later. With Clang it requires version 7.0.0 or later.
>
>  To enable KCSAN configure the kernel with::
>
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNH7Szgnbg%2B7Q_TGCma6z4OXcSELtvgvndx%3D6zvok%3DsAA%40mail.gmail.com.

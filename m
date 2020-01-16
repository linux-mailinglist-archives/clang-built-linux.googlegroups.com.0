Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY5VQPYQKGQE3W2KVLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id B992213FBB5
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 22:51:32 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id u125sf8533200oia.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 13:51:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579211491; cv=pass;
        d=google.com; s=arc-20160816;
        b=dCAUhVG4oTVBiyk2m17M19b2LORLBr4KB3TFwFZUJIzi/+67cu6k0+7X+dst2s5XX/
         2shKR9M5QBO5Dr23FpTLZKb8yGO5bpa9klqBJMfCyekSYhm6+t02hwEMg5/UF3EjEIbA
         uMsc3FuH9/lxzNXM5yx6sHCclPZnN692pWFAW3QRsQ/gvYCThTpF/0RuS7X0qCBkLJrd
         tpNAaDGNsBzRue4D6u6sojPREeL4xW9S9nHTvqtDQYH/iI3CfGzInWHSv6XTaiaWSgKW
         4eNnl/ea5dMHIhjdTKR/Qi6MorkAfCPkOpqsG8QjcJxa0TywtHfz4G3FLgW0SCI0UYjf
         l1MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8Ahoxx7Ed239k0imV0U7UGNZZbaCgOEZAWvXjVDSkQo=;
        b=VvE0bOSHh9su9fbh3KXByogTL8uct6kbT82rHyR5khgxxodwZ3qpMs++jl307uKbHG
         ptRXnDJLEIjI2x13PronX2W9TtvNNR24EzSUwv+x4Kb57A1xbxCd0iHN47CFp4RYR/2J
         zlhX0Sj+JeHJa9y9j56JraRcC5QZQJB3jICHeHFjlE7DLQOzrmcfcIRi+TkCMouCANUL
         BhnwS2pq5gGlZcBimLWwNM+cF6dT0uMEcCYYdyxoXK/XAN6LNaFSLkiYLhUcIA+FgFo7
         4mDVuBwtkJFcG0x9TnCt6JHE3BOC43iihUE8jyHtqsKEctossTrrMDb6Z+8p0viVna5P
         kl9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=slq1poX6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Ahoxx7Ed239k0imV0U7UGNZZbaCgOEZAWvXjVDSkQo=;
        b=D/bDK0Q2a+Inb3wvG368h7WR5wT1UjsbZOQy6kj92RZ5lJ3wKQ0by+3xbtjqFNlxbN
         jreme1fwmJsN47NgW3svG66dfZpsdfTo8RRFZSCl+H3AdrhaAQBV4gNjN7AcFwUDer9K
         zV0A+cuTI5i5q/8scS7JBnWnROI6OBljKBIaV/AvfsOahuHPUMaC3pBVWiOmOojpvb5X
         Ta6oXXCpJWONxvPOd/dc0Z4BTLj/osve4lQ9rDJbZbS0TehtN9TFYPbwK3irO8HIgsBt
         Z9mM20kOe83e0fy67y7dULmkRWVvciJHgMFf9FMOC3nteaO8GxdXvk86sNXr0A4itb2y
         SQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Ahoxx7Ed239k0imV0U7UGNZZbaCgOEZAWvXjVDSkQo=;
        b=ttS9KzuXSfCWKIZJmY0JDOjIhIUITONftfWcrRLS3+r4Kx15/Blyh5cXH2OLK1R1Lw
         B5BbTLwx/DYtsm9Q4JZpi5BHvD1/jcMkrQV+1IMeSMxLQUj3qvpBPWTWLPxueZWeXqEA
         Iw8QegVIqkG/4wNwqCHpaVVpkjm+icDCW2NGhQgwuvnhQbjauXl5GwzceQKfZkRlOFNK
         ik3bB+/XNZVO6P87zsFE0Vh4wz4RPZv5zG+iwxs9RQs5amxu49zA4Xee+xnqNkcMi7pE
         qOJJaHQiHOMPKXLkDMbUptqxwjtxrl0Raw+Q489DYb60vtsrfHTQQd7AMg0Kgt06olV1
         6sGA==
X-Gm-Message-State: APjAAAVIiXInDgmQBk7ZhgmqVFdQCGN2+2WGLwD8DixoIvBf064C/Jrx
	IQ1kHrIHBTWfLna5pRm6QZQ=
X-Google-Smtp-Source: APXvYqzun8t+p91Ke+FPu2I/a8vdfiRiQvtCoAcAE0Hks/LMlsea429/zRhbTh22dbDU1eLZPEjgQg==
X-Received: by 2002:a05:6830:1d5b:: with SMTP id p27mr3614980oth.263.1579211491071;
        Thu, 16 Jan 2020 13:51:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:72da:: with SMTP id d26ls4301022otk.9.gmail; Thu, 16 Jan
 2020 13:51:30 -0800 (PST)
X-Received: by 2002:a9d:dc1:: with SMTP id 59mr3718839ots.250.1579211490747;
        Thu, 16 Jan 2020 13:51:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579211490; cv=none;
        d=google.com; s=arc-20160816;
        b=kurz9KeeUKMknsXcEKelCLKHIZSV5mK0ZoGycqKE7T6nnQoTghRbSqjQonHDAdfZPf
         4kFzz+MaVYnbXP9gru+MTVbIiSHWXg7miKRrsp92tQbt5/JB3qt42ys8tAZg+l/a2ZD9
         Ix5llulG1uTTPqr9J+rJvxNx30rL4z1MXQNlY2sID00+7mbNLIDkD59yu9a2Ej5OAETF
         lk/w9dj5oHK0Cb1E5gYtOCroaSOhAh5yFaAplg8Son0DSk3Ri+d7SBxWXfMqTq1BuE2y
         fRYuVf7uvGaF+o2QUlmU1p1qRbzwMB1PtVflGIsbRZVLoPniIA3SIhMNiA/jsb6/xMjM
         KlgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RBOCGtg7OqAgrI3CtuSLrCxr9lwFIXwjsb8KVNmSEs0=;
        b=MjV3D4nsEc1qLZMXHkgxYsf4gja3iQgTzkeAn+Ws5G+7FmijOcurJ4ezPtQlQ8Gik5
         Wa/w8hsz+t4CNEKvx5nJgl6ean0j7TzGqnY1KnSv+rNqQg1jKO0LCus1ZZx1xMUU0MKJ
         Zap9S82ujzfqYTc+mXucnFE1Y1gdUHTG93G+tIKDaC/7r4tcA1JYU00jPL86F/2gJsKZ
         FOsdr09FhDh8BXj5AiMy5JWh/V5HnjivBueQ0dzEHc0MAa2PaPXhtBt8zJ104AhgP4cv
         3Tmcz1163VE2DM1fa3r+8oVr3n0HIymLwupltG5Le5xOo/Rt1zomMtanvq36/sKLNq2b
         QMTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=slq1poX6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e14si1281906otr.1.2020.01.16.13.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 13:51:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id k3so10589795pgc.3
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 13:51:30 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr40917074pgk.381.1579211489460;
 Thu, 16 Jan 2020 13:51:29 -0800 (PST)
MIME-Version: 1.0
References: <20191022132522.GA12072@embeddedor> <20200113231413.GA23583@ubuntu-x2-xlarge-x86>
 <20200116154503.Horde.MnWaeq-f0qzzp8gx01ERP2p@embeddedor.com>
In-Reply-To: <20200116154503.Horde.MnWaeq-f0qzzp8gx01ERP2p@embeddedor.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Jan 2020 13:51:18 -0800
Message-ID: <CAKwvOd=cA7E0MOtFfaQ5-+-v=+YNHYQPgMq6yS517PLLKn=Qpw@mail.gmail.com>
Subject: Re: [PATCH] media: i2c: adv748x: Fix unsafe macros
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Hans Verkuil <hans.verkuil@cisco.com>, 
	Dmitry Vyukov <dvyukov@google.com>, linux-media@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=slq1poX6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jan 16, 2020 at 1:45 PM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
>
> Hi!
> Friendly ping:
>
> Who can take this?
>
> It's been almost three months now since I first sent this patch out.

Kieran is listed as maintainer of:
  998 F:  drivers/media/i2c/adv748x/*

but I'm guessing the tree would be Mauro's.  It would be good if
Kieran can review, then Mauro can pick up?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DcA7E0MOtFfaQ5-%2B-v%3D%2BYNHYQPgMq6yS517PLLKn%3DQpw%40mail.gmail.com.

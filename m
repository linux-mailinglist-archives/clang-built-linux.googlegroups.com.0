Return-Path: <clang-built-linux+bncBC2ORX645YPRB2NGXT6AKGQELXO3JOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 934422940AC
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 18:42:18 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id i3sf1073992lja.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 09:42:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603212138; cv=pass;
        d=google.com; s=arc-20160816;
        b=F1JstJ2msXJkzbbNNCl3RTNBAYNqCheloM2ansqs85B0YHW0L6v+mxTjm4t+G2nR/P
         71lYMyNoRJ9ZD893WIRmH6PXSoSzgJn9GFJsf8YtxzDP9WTdKjb1sZbvUFmYZACV1IRA
         U0pp/M2DKPHuTK75cKGJw1Xo6JTOY8HkaC8tbwFntphYEro2A/AQMXKdelSk4GBQs5Ll
         3Y8ekRAVwyvDjJ1JVXpykGYaX9xnQ6MLP+ugJZY0TQx1+W0cQ5Fu4qQdFLgm4KO7/ebB
         qKg7PpJdDrXeMJBU2L22g+ihwp+0UNdBfkLV69Hlws8/x+XCamh72Jb5S4gdHqduPUfM
         jISQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AtcbOPCw/eW4s0LMZnsqXOUWE4QE4krJdBySsy+jh5M=;
        b=L3SHpNFyiwGb69y5bgaqYot7HHJqVPo9f/Poc9Mqfs8tm/Hkt8lzEusuMmBJ46PLy/
         47ufa/+k+/BOdHHkx7jqhVh/F0oOw1d2U+2Yj/M1lu2hgw3yDCmb9XUYjYY/SVSVbTC/
         f+ukEC1F88U0qb96Zg0A3pzPVUMowcf+hfOu6sJRTTU6CmlqNNMXZBzkhC4YS6fIjLes
         rwHUUTcUCLuTf2l1bYakprpWPPt8aAe5zW3T7Yra78N5FqYYeD58eLDt0DpyfTS8cmjq
         iElI+mx/uADbRRQOLY05cOAKhpy3cGJrN9yqCgQYbiFki1TIP4jp/SOjFc/u+lCd1m9u
         pVBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tfuJ2Gp2;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AtcbOPCw/eW4s0LMZnsqXOUWE4QE4krJdBySsy+jh5M=;
        b=ZoPKwLJAR0jYXpSlvlWyUy6oIpQVQw0wpHEsEvEFV7WjDuu/UblT9PqJ32p/GN3BVi
         S0HxaDuzmk7jnsh27pQ9qfVh1f3Ouh6c8tukexEgAIajj96RkdvLfGScGZF7X05mAYlj
         Vyna38CUqQN+2AN+/0mDH7pXX00VB/7RS3c5MpxwozhiGw8t+KFQRwsj177H95UWvdC5
         ynrNE6M0VBaxA+DeFOrEpUKNuQc2JyenuspYW21z+nVYTNvMLevEEZwckC5idfPJq7EM
         ijzH5QHj/2jT16swyUZmTk4q/3HHetv7iO8jBAelbK3TEPITaP3r9rMygeVlwwaT9T5M
         VoqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AtcbOPCw/eW4s0LMZnsqXOUWE4QE4krJdBySsy+jh5M=;
        b=TdrATlNihBu/axScKYtwnDBnhxvLg4uN7lEpaj2Z21NrlZeBn9/VxPUbdIBPAL59hX
         TGFBCeLxZwSqrzJZHbh/BLlqY7dmNvJoekmj0jS5Sm/JMmLN4JP0kKBsm3RbYoY2b0fe
         mFzesjKvW6jYi1Je7rSZQMZgfH0nxhBC/LwqlwP9XDkXYlQOWFXknaf1MT2yrez+ZWJM
         s3OJlSJCtj+CSKB5l7iFGtBcd2Tgp/dAaxejwsa13NJZcM4qTu+UXCSf1B6652qxDX7d
         0DYbMRiQwhG/qvxg4KtaqY791cCjvv2kd47paBkmPgBk4LwYJeYIzoOnAajyeRvLnLH6
         /dFA==
X-Gm-Message-State: AOAM531YoInPIdNSLBX9yPyPN+K1QcQEB8UJLmdOx0lEGnqMFFGtWUlL
	KPWczNHV2VFk1n6SlQt2vOc=
X-Google-Smtp-Source: ABdhPJyUej7KR+Q9v6emLILyluj7gxeV1uSvtHI5gb12EzfmVCUblvzuIuERK0f7iQLr1R3S+PX4kw==
X-Received: by 2002:a19:e015:: with SMTP id x21mr1473862lfg.586.1603212138091;
        Tue, 20 Oct 2020 09:42:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls1680844lff.1.gmail; Tue, 20 Oct
 2020 09:42:16 -0700 (PDT)
X-Received: by 2002:a19:b0a:: with SMTP id 10mr1409272lfl.589.1603212136916;
        Tue, 20 Oct 2020 09:42:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603212136; cv=none;
        d=google.com; s=arc-20160816;
        b=hLyFSINPqGV+85K2fov2An30eEQxPBQYjw3INxu9St/OBfaOs0zwFf3giopgDGsSSN
         EmIKdVwl09gWTUhnBuZwQ4WG3wO0VoutdTDWK1pPBU9U/saAcNU8xHLzNgBiHGdW5D/5
         NfecDxDC/ephWzlDRpPPrFWBEI28ZJH3hkZFJ1d7RKVjCwl4EzJKinvSwlOYhI6+L+oG
         eYBk8KtVgKEZ/ejEc5U586SylbPDp17G62mipyxZcitQ2Rj4h5xno9LkemkmbWqM9twO
         MfQ2X44mixJ6jjI6CSO6oI1PK/suWHMjKGvGY/IsZWftkAEJEJvdCVhAtK9stgjbv21g
         EsEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=I0Me8GLYPnUizRcS83SCdg5n9DP3MyuxXWUGsX9kdwo=;
        b=Ga5cHPprZJfYhXEyC6AjAhBaBqBs4v/X8HdttJvYsB7ZQBHPHNDRRatLtC5vEc0PNc
         RZ+WL5L5KWI9MjLR/5evoT/FBB/XyMVcz1YryYj805C/sJ3mMW1Yx2jtqiLx4Km8Ea+Q
         L9XxTO4oLpKCk6OgvPP3ulTeqLEi1JSU1IOKEFfh6I2YScnqZaOoCBufblGLgHeTo62N
         iXw2CaWp/EWspHCfLkfLUxRhQ8dPES8DK5+rv0/FeqvNfCV9sGtWCK21ij1r/k9arFNV
         K2IvAnZzpIWFKLx3QCxZh086ZWqxLVWv2ywqrPAmiT7yC/15HNXJaokQQFUDcO6cm13d
         zYag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tfuJ2Gp2;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e1si102765ljg.6.2020.10.20.09.42.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 09:42:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id l16so2546788eds.3
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 09:42:16 -0700 (PDT)
X-Received: by 2002:aa7:c390:: with SMTP id k16mr3866300edq.40.1603212136160;
 Tue, 20 Oct 2020 09:42:16 -0700 (PDT)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-14-samitolvanen@google.com> <202010141548.47CB1BC@keescook>
In-Reply-To: <202010141548.47CB1BC@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Oct 2020 09:42:05 -0700
Message-ID: <CABCJKuf8=2A5fAY0rEZAWBw7q-PO8iFvmubGy4bj6GLZ7k8c9g@mail.gmail.com>
Subject: Re: [PATCH v6 13/25] kbuild: lto: merge module sections
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tfuJ2Gp2;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::544
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Oct 14, 2020 at 3:49 PM Kees Cook <keescook@chromium.org> wrote:
> In looking at this again -- is this ifdef needed? Couldn't this be done
> unconditionally? (Which would make it an independent change...)

No, I suppose it's not needed. I can drop the ifdef from the next version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuf8%3D2A5fAY0rEZAWBw7q-PO8iFvmubGy4bj6GLZ7k8c9g%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVPQQOFAMGQEA3RML6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6928740B7FE
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:30:30 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id q17-20020a25b591000000b005a07d27bbdasf298611ybj.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:30:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631647829; cv=pass;
        d=google.com; s=arc-20160816;
        b=zwUHERbe94FglakFUJ7viHyxgOwYeQaT6zboniwnpCtccRdAesvRQcQ8pd05JJEGwZ
         2V2sfmHDjBcw57bkwW8FoZsXmkKFrp580emF0YnPINZDXAd0jPfhqSmHUsRxoTCl4vx6
         yy94Zw9vOv4h4UtKCNDy5zbsnMnJ+xyK7fOzlPdzEOv0zfHjVKgTtNk2E16j0q1SiX+O
         q7MnfzcmggD0GWQ/yw1NTB9XavFQmen1yNR4hVqN3BDUqnpTQwHTyvUxVhKtUd7eMg/A
         Z+U2n8iuIwYz95Wz55V8X0hOI5yGkg5hmnyuabo6Xc86YgCDXDk06qyTiYUEevrIvLWb
         zU8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=O19g9mtNzVlpKm3FEetfh7cHbKpqnTFoFHafWW4feWU=;
        b=s4ft0oYCRTtcT0LKd3fjlesrFFy62ecdK4xBzYHv6u1WqUnAMJi11CU+zqc+Vhv/PP
         ukF8yjY3PQs/RxZKHAf55MLxC0BSL0u91plbjeV5AjnyhJvHYeCPRDJOUdz+DwIr+LRV
         okB0iEG59R33trwkLoOKyn0CbpYj+He5KKJcc6BslG/oMcteN8Puik9pbOpxjgRy3+AM
         vEZp4qxeIJ+K1SkMPlU52MIvkbqFaZD0BNEc6AQiAVoBxlilQZmgw0AwwMT1bkDjh+bD
         pcfPBp5qIqLE3n5T/gr5SUrhIL2FpwkXDQSM2pTSRdUaCZW/7bmU40WTdHVqBRI0l98U
         GL0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eE3ivPTp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O19g9mtNzVlpKm3FEetfh7cHbKpqnTFoFHafWW4feWU=;
        b=snKwdivtn+8GzH9nOA1uQEbT+b7J26g1z6L+szddJkOJoxEXp9JfjcgQIwpsdeI6oC
         pL4UEq6pE5BW4mR7UzJNid1cxD8fsFMy8759A5qtW22mHz+XmuSaomvptQlLb7UNWY8V
         zyzVPYD8zU8PLDYY0jp8iPKo+NYxj1bGld0hgsdHkO/W0xZLoQvq/K/IJNqg9GG402qE
         xCkVqpgwISkUvwaFkRdFtemyoZyysWugQ7zQO8JziNrKT+Rx3+OW4sYYLITqvkkzQ6Jj
         BTrlcC/FuRFe8gqhWByGojB6g/f+ifDTlqnbhAR9/TNjbd+2ewG/147sHKBR7fdZUran
         pcKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O19g9mtNzVlpKm3FEetfh7cHbKpqnTFoFHafWW4feWU=;
        b=LYCQi71wkd3VZh+4N86JNLSr9jmlkpVT9E25myXh5nKeU3Tn24QB7nTQTT2MGMTBF9
         fJNyKgMR4MFdhaJr/vYNjqQ+udOp3exlapBr3Z73k+4a6nl5hQ/Xu/rsTwsX5mwZE1Gs
         ggl3Jw21a/U7/4QciJ1bvMwoaOrG5+6HlDuBiUyeEzxMAAWP1nvltcjCUgGgo8Jwsy1+
         jo69DrVHzlv/rwoEf87kdKOq8ypvy2N4i+QBHRDWaVuTX0TO1AcWtwK8v2x8MGnKUpEW
         G9r1zizuF9/n66YsRQ8hDgUa7qws0R62sBGsxEh632e+KxKrvwgKbcL43SiDLRJpk9ZK
         EiPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53292Dy9Q19mp2fQ1L/+X2bhoYbUnuXSJWXBJOo8AB4JoC3OzZHn
	wxg4sNmckzi3DAr5ObnEfjc=
X-Google-Smtp-Source: ABdhPJzJmUsi2v0B8lSJXva9AWq25mNSSdJz3u5gzA1VTVZojpBQ4anQVrFC2w01oF8aMZMLnUaqYQ==
X-Received: by 2002:a05:6902:1005:: with SMTP id w5mr1058312ybt.330.1631647829362;
        Tue, 14 Sep 2021 12:30:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls62073ybc.2.gmail; Tue, 14 Sep
 2021 12:30:28 -0700 (PDT)
X-Received: by 2002:a25:5b0a:: with SMTP id p10mr975669ybb.53.1631647828901;
        Tue, 14 Sep 2021 12:30:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631647828; cv=none;
        d=google.com; s=arc-20160816;
        b=ycdk2YCEU415PZm6t1CCiydJB0YxbIXXyA8K5vj4kRW9dRUkWus/rGPldZNKq36bQW
         A2Y2gR8sLw46KjFEAzNNZdLzE0YDGOsd3HCykEF+ppMPd8bU6avcV/i0MHvL9lHGzwLE
         W5XZMZ3UJRlbEPJCqTndZ61v586BYfx84AG8s5Oi0J0Zrcli4805Wc13SpD3g9dIiG9b
         ym9LGQGjJeRP/0DX3eqbmOsNMqHfjM8ytxNzYN4lvZ6TeC3SurYvxvGB+RRBo/mxv4UV
         bacriF1NqG6o3PSvHG07B/sBiH2On3OSdwE24w9dSTlBH3XGenVH6hWTYEE+cKiRIDtb
         4tHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vrjLDI3rk3n/iE7R3MDi8dHAYy5wuiJVn0w/n/EsYnA=;
        b=Lqgyg4iEDih6ZNjxryuRSa08s0Sq6J1yQ9kyCQ7fyX+PQxgdxOEJ2BVB621+Rqx1PZ
         Dt0nCXK6MTXGOyAXf19mULA/16x2nIfJ2R9dGnz1WhMuQhysGpbWpTggFEbwpvvNU2Oo
         S1LRnv0gwsh4mF8623mZwhVpLRkTE+F7tEhZCsZSgGrlZesU4ioX/r1JZp5rCVvJ22lh
         9gPzj0OSpXn72X4KYWxYWc0FU8TWCVPofRieXv927XSETDkliRnxeNJzC1TfsUdHjyYd
         0WMEhFoRh7A9uoOfJfHOir23b9ouhKHhkmRz41kvmtsVqsjtl2bBhOochu4v83g8KcKb
         6MYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eE3ivPTp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id p10si941690ybl.2.2021.09.14.12.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:30:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id me5-20020a17090b17c500b0019af76b7bb4so2387618pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:30:28 -0700 (PDT)
X-Received: by 2002:a17:902:7c8d:b0:13a:768b:d6c0 with SMTP id y13-20020a1709027c8d00b0013a768bd6c0mr16583479pll.83.1631647828551;
        Tue, 14 Sep 2021 12:30:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id cl16sm2411732pjb.23.2021.09.14.12.30.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 12:30:28 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:30:26 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 07/16] lkdtm: Disable UNSET_SMEP with CFI
Message-ID: <202109141229.F1710D3A@keescook>
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-8-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210914191045.2234020-8-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eE3ivPTp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Sep 14, 2021 at 12:10:36PM -0700, Sami Tolvanen wrote:
> Disable the UNSET_SMEP test when CONFIG_CFI_CLANG is enabled as
> jumping to a call gadget would always trip CFI instead.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Yeah, (thankfully) this test can't work sanely under CFI.

Acked-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202109141229.F1710D3A%40keescook.

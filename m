Return-Path: <clang-built-linux+bncBD6K324WS4FBB7VMQL5QKGQE4VIHSJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9616826A30C
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 12:25:02 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id i23sf1068816edr.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 03:25:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600165502; cv=pass;
        d=google.com; s=arc-20160816;
        b=k6brfMwBCokBpYad0aN0BvaKL7BYQLB1I8wia8wJmrtkO2Sje4AgL+rZDfdlDjAX6n
         Mt9GqYaKICqp5Jz1I2dZN70bBE0ggz3ADingajHj1EFXQUL0C8EzF4AcwdhXMU9i/Hvn
         aYra6BGxG0vnb4KFw1s5mfTiEDJd83FfqBeEfS0kf926it611hyf3D8/Js4Tsla4m2zi
         mMm5dWYWskfP2knYJZPDI86F97GNHyco0KvKT4yX6D3MBqJHML/F50XdF+oxjgXDc1IF
         NFZUyV63qs+n2ldrVA00/9E08/ZHcYScfpM//lHil8ZLssJ/rJzan5rLz/4RNKCo9ANf
         T1jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=z+CzkmLTHXRR0PQ+3tfLg4LKmGk/8nAb/+HpsAgqk1Y=;
        b=AMQMtkt849Gc6rnkLJciry9+3tRxb6Vwd95YjTy2kAbV062FVEOkPCucE5TB0FxNM+
         7U5q3H9DQHQ/sVK5tZnlKrCfpziiOT76MYxAkN/zjf5+izfrvCFrixhtiffL6lARnses
         D0IY9PDbEO3Z0R/bERk8k39nyPiz78GYqWxKP3Ple2yYNd2TzLF4fPAz8uOCeDWPyfp5
         X/fHFY3BROcXgTcBRPjiJhvb3uH3wYPdp9dld3gGY9m18n/dI05hWnJMykIssRxzBLT6
         jsqysJDSfritwWt12Z7sNobFybQ3yjJ95ZT+mMhO6T8X4n+fgLwK9rInYuX6FcCq1SMI
         +b1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vbBJy4kw;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=z+CzkmLTHXRR0PQ+3tfLg4LKmGk/8nAb/+HpsAgqk1Y=;
        b=RNLNAtj/ahj2h4Gl11GRuVCX1PbyrJmEhGC+plQrJWfctrORTwf8umyUHGIOCasl2s
         7HH4Zs1KgvwMK2Ned8D9tlR+I2Kc24S6FyAuclTfUO4cjJHgqj4Rwc/8ZaBZ2ULFNAoQ
         m75/hZ0OJpi1mEkIt6yURdXfhy0IC14U1xOcxmpOV5ZopFsjEKtmfMLViWrBEbfwl5rh
         a65BBnz63iLUdwbvC7Odc3qpmM8yGDGzY/F5AzkFxk0ehXgvdLwzNIy/Pqe2IEhh8nKL
         TCAL3Uobh7Ztn7Aa+Lc1ubj/iDua/ooaYuXUbjkD7B72IKtQuMX5XoihzNViTktuzpys
         BTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z+CzkmLTHXRR0PQ+3tfLg4LKmGk/8nAb/+HpsAgqk1Y=;
        b=phi/Eyy5btZatGvw66jEIeJoI9i7KJz6TjaXP+t3mTaluqzevgtLHpJE2kv9Hz/Vus
         /xzsE6GM6CLfQDDLK8RtiZ104d167VW36s2p2HG0flJm2PjQfVkfkb/e55oIf4C9MlEQ
         ZAhYWb6x9o4nK4Cu4zoo0easF9fBXTB1AVMUc8j9/ZD+bwUXfFpR8vu+ov6mc/rNUn8k
         WILBCT/VL9Xac4tQwCKQwObnD4XsAX2Q8ZU53xjEE8sn7ztQRpChmZfH9I3s3M1Np9Fa
         f2Mzg87OYl53iIM3n4qKp14AgcE2kHYb0wTnWU5OdZaOtO2JHlQJiyYM9N9fsEBXnCor
         6aDQ==
X-Gm-Message-State: AOAM532SI6k/EeZDqps0IC5b+6Qn1V8LxMQiYqCXIkcizKU6/qbdzVUV
	PGB84ywIQ1ILcU2NSgVXqjo=
X-Google-Smtp-Source: ABdhPJx5hOj3T1eJxyA5LNVxcu9Vv7D1g5ae2uI7/BPFEVkw8GcxH5iYEUcv9+uEAEtQaBLKnxBVeg==
X-Received: by 2002:aa7:da16:: with SMTP id r22mr22070624eds.132.1600165502344;
        Tue, 15 Sep 2020 03:25:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bc05:: with SMTP id j5ls2404867edh.0.gmail; Tue, 15 Sep
 2020 03:25:01 -0700 (PDT)
X-Received: by 2002:a50:b046:: with SMTP id i64mr22521453edd.9.1600165501320;
        Tue, 15 Sep 2020 03:25:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600165501; cv=none;
        d=google.com; s=arc-20160816;
        b=cIPjpxpbYCrZr1NkGPBoDDHrzm14DE4HT5VD34ZL7hOdGIrXoBd9Z6uoU+9y05S6J0
         CXn1wa3YHBhJF9LyevhNQrPCrO4u8jnJckC+KVJs3vaGzmaWkUQDA/WZPiwxhDutjg2a
         GQSrvXU6rGST0lAKxGnBHcEtNo/nIGowBdwvqNzy9KQk7ZPCvz8qeefSLRdpHAFOlV9C
         US8tlYxSLNxLBh13aSps1E5wL90ZN0yzri8tSIIVZjW8r342LZ2hMPBnCnHbfuGVDtDI
         dlcmUjdYtk1KKX+qitcMWnzhQJRrLfcsmaVrhQtHpXy3U/lrhTjjFgbDufD2Jv3jzkS9
         xOng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nCObEKoOnmpHrzYJFBm9pkBKEq9SNCMkpHaxOskN+KQ=;
        b=somv+dk062jQPFaYDs6moZjZvuiQvD2tReYj1nhzNW8JqlhsN1y+/Rz0qQZTJIcFfW
         a1ln7HxvByQ11bSfba4Ys/B9jrtulZtcdWhFl4LNThOAoUsUkT71npYegV9uep36EGii
         54cs/DbpB9LTm+KWVpJchfJXP2jWVUBjXXGAhBeKq1uQ1RlPeyjlM59pn+n9J6u8/ebB
         LGXIlRAefv8+nuArvB4DF2Vp/gCMFl9m4t3vH5S7/qICgIaFk3M0bJUHSdUYKW0lv4HP
         QsbtpVTeVIXPnrQLviElOrXfQ8uFb9jNCBNyGesyFUQyOYAs4kuC3Jew+I2JIrWf5tai
         qfBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vbBJy4kw;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id k6si351003eds.3.2020.09.15.03.25.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 03:25:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id y15so2893898wmi.0
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 03:25:01 -0700 (PDT)
X-Received: by 2002:a1c:2e08:: with SMTP id u8mr4155025wmu.156.1600165500941;
        Tue, 15 Sep 2020 03:25:00 -0700 (PDT)
Received: from google.com (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id w15sm27651716wro.46.2020.09.15.03.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 03:25:00 -0700 (PDT)
Date: Tue, 15 Sep 2020 10:24:58 +0000
From: "'George Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: maz@kernel.org, catalin.marinas@arm.com, will@kernel.org,
	masahiroy@kernel.org, michal.lkml@markovi.net,
	linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, james.morse@arm.com,
	julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
	natechancellor@gmail.com, ndesaulniers@google.com,
	dbrazdil@google.com, broonie@kernel.org, maskray@google.com,
	ascull@google.com, akpm@linux-foundation.org, dvyukov@google.com,
	elver@google.com, tglx@linutronix.de, arnd@arndb.de
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
Message-ID: <20200915102458.GA1650630@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-7-georgepope@google.com>
 <202009141509.CDDC8C8@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009141509.CDDC8C8@keescook>
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vbBJy4kw;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George Popescu <georgepope@google.com>
Reply-To: George Popescu <georgepope@google.com>
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

On Mon, Sep 14, 2020 at 03:13:14PM -0700, Kees Cook wrote:
> On Mon, Sep 14, 2020 at 05:27:42PM +0000, George-Aurelian Popescu wrote:
> > From: George Popescu <georgepope@google.com>
> > 
> > When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> > the handler call, preventing it from printing any information processed
> > inside the buffer.
> > For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> > -fsanitize=local-bounds, and the latter adds a brk after the handler
> > call
> 
> That sounds like a compiler bug?
Actually in clang 12 documentation is written that -fsanitize=bounds
expands to that. GCC  doesn't have those two options, only the
-fsanitize=bounds which looks similar to -fsanitize=array-bounds from
clang. So I don't see it as a compiler bug, just a misuse of flags.

> > Signed-off-by: George Popescu <georgepope@google.com>
> > ---
> >  scripts/Makefile.ubsan | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> > 
> > diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
> > index 27348029b2b8..3d15ac346c97 100644
> > --- a/scripts/Makefile.ubsan
> > +++ b/scripts/Makefile.ubsan
> > @@ -4,7 +4,14 @@ ifdef CONFIG_UBSAN_ALIGNMENT
> >  endif
> >  
> >  ifdef CONFIG_UBSAN_BOUNDS
> > -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> > +      # For Clang -fsanitize=bounds translates to -fsanitize=array-bounds and
> > +      # -fsanitize=local-bounds; the latter adds a brk right after the
> > +      # handler is called.
> > +      ifdef CONFIG_CC_IS_CLANG
> > +            CFLAGS_UBSAN += $(call cc-option, -fsanitize=array-bounds)
> 
> This would mean losing the local-bounds coverage? Isn't that for locally
> defined arrays on the stack?
This would mean losing the local-bounds coverage. I tried to  test it without
local-bounds and with a locally defined array on the stack and it works fine
(the handler is called and the error reported). For me it feels like
--array-bounds and --local-bounds are triggered for the same type of
undefined_behaviours but they are handling them different.

> > +      else
> > +            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> > +      endif
> >  endif
> >  
> >  ifdef CONFIG_UBSAN_MISC
> > -- 
> > 2.28.0.618.gf4bc123cb7-goog
> > 
> 
> --
Thanks,
George

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200915102458.GA1650630%40google.com.

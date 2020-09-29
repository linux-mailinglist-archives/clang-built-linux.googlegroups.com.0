Return-Path: <clang-built-linux+bncBDRZHGH43YJRBI6QZ35QKGQEQMHZIGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FFE27DA28
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:33:23 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id w10sf2510001ejq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:33:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601415203; cv=pass;
        d=google.com; s=arc-20160816;
        b=JX9cDZGA9tDt0BDigCHVhX7bfAAKHx64leIs+9UWRu46qmXUff4CnE7gSBgR8Ekky1
         OJAjESXfgOMHFNwpmXGyWZTb0Je/rhjAPmI12BIADcsQCZKCNkE0Bw5u/c8TpLgQCOiy
         kRYGsUu489HUQd5KW5TnAqqyzLYacPbHzbJfKGCSCCYdtXCjG4D2i3UzDdemYC3YshHv
         v6gjNr6xGBm0VtwOIGmX/ruC51bm8PBTTzfUdkj9xv1IOY87Q7p8t8zG5gfPPdjlegcq
         yxJxd3vhgizx0WsAOCTq9LgGWaa+tlCpTYbPu5AmFqzpJ9YYfiuq9hb9iBGLyKdMNMfY
         JTqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6PsKIy7j4HFUKSqHiTD7LsdcwCD1nHTMFiUekY4dnHk=;
        b=zXQObK1msl3PIjw9kBYCTNx0wq+4iWZe9Kqq/28nQMXdLTrv3U500FfacWPec8sdK/
         mUBqGf1BMppIDc0SAUuAUzjjxYyKG9hqhUSyy4Uh94VHIDupnBzq3wOoyyMygmkv3hqC
         LvB/E1AR0r5cTJxCTidMth/rmNY2P59ZvGSNJ2aMbZ1LcoMLXHH2SBKXIs4cy6lVA/yR
         21uL2vcDRGKiSltcMG56rdXcta+z6/BcxwmvxuzPy1CCLus3XPj/mSwkwm7dBcFQGDJh
         E+My2aC2/PdR29CQks0V8PPQTPAvySWMpk39RGVfaaK3tkCmeR0Rg0qN3Q0mRFIH5ipN
         1oMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UlhR/VAY";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PsKIy7j4HFUKSqHiTD7LsdcwCD1nHTMFiUekY4dnHk=;
        b=DUNzCbY5bNIY1RuJGbECQwMcDljE1BHcnOQg3TrJ6zQXLDiQn0/PMZbl59N0+eHENj
         ytGche60MN+ePs8iY81c6y4V0UCjrClqve8FT3QEB+Hc7PbJvKsM00Mf2AfI1bbqHawR
         DTxoM8ZsylvdrdCNyAGw4OCb50lIB+ZLivQYG/I2mLTPqS8TW2ZmYd6AwPGgxrk7wTxo
         loAUEOEy4Q7vxgF1KrnEVnSyjDw6JWntFbczhDWVmurAjFW/HZml4YJqEPaZcbwp/Yn7
         mvKzVU2TByT6mGI4oGdZ9N2zd9xAJbnncZv77jiaxw8ss4Vr8fi/mym2diZILFmQcy2C
         4ZQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PsKIy7j4HFUKSqHiTD7LsdcwCD1nHTMFiUekY4dnHk=;
        b=orECCxGvqNzS7q+Dsgc88GawxWKaAtLNhRjKzx5TY8vveCn5ChAJqPUfLpuyyWMNcw
         VWml3IdEIC1CxJFn/TpnD7ebQHj9syAmzm7B1+cCN8W4iPr7M31/iVu3thBArFT0/gmO
         gd5DOFlWJHr+LOcei4FlT1UfxcdEoBuvfgRJweid8WbtF4nTD3vwXuEsNC+tIPgh7s3v
         YRL4H5qog/Nmbx+xL9Vfx6PQ8TTZEbPDfOdxkPy8VKPKX40AF1qWmWOpPtOkHvXcl5Wv
         GVitwI7SmZ9BAoyAnfkdW4y0uCEq1HztFptsjeTyf/2ZyzeQa3PTh+2FuGe7QJfZMuFp
         N8qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6PsKIy7j4HFUKSqHiTD7LsdcwCD1nHTMFiUekY4dnHk=;
        b=RCHaDMUWJqCF1XW1LiaRg+W3N/22rjnqg4G9vvzsrtBeUDNvim5nxJDGqYAmlJKCBu
         n9UOcoqIyUZz4LrZ5ESLZDCQm2hcKqW45ME+YWrgSXci02IKc55DwwRW2l7E7q2Sq4qe
         VlrrnzkIr97BRWUSaUQ+RtagL+N1pB6nZ/ryN4VMQqzw1yANtw8d5EfQzM3YAM9HkiI0
         UbxNUwQSMFFLffZ5kJ5hTmo5/N5V6/YidnBpYRGeJKsw1B3EpuikweDskZKdgmct2jhq
         YBKkfMX/lhTKQg9pg4hAkbxqBysJ10iJsUh6fe1BLR4hiKs2XIhmnwFsihHUIHdzCVN1
         VDiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CcUVYuYj5cr2Sus8Gtq5Ah34jToQmrIxbI2dLg+4ON0sXM1Tg
	oQYvL9sUqM3zunSG3FGSQPg=
X-Google-Smtp-Source: ABdhPJzkoEG4Rb4afzstYQr5mLI4MMpnVXzhe8WunFqNHSlTBAcEY1d4A+40Kxz4/6HuMS0UPlTPYQ==
X-Received: by 2002:a17:906:4e97:: with SMTP id v23mr42868eju.501.1601415203427;
        Tue, 29 Sep 2020 14:33:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4c8c:: with SMTP id q12ls83627eju.2.gmail; Tue, 29
 Sep 2020 14:33:22 -0700 (PDT)
X-Received: by 2002:a17:907:110f:: with SMTP id qu15mr6269205ejb.359.1601415202469;
        Tue, 29 Sep 2020 14:33:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601415202; cv=none;
        d=google.com; s=arc-20160816;
        b=i/hMFYfE0dyR2qVeTeQrUDkPzapXjMSXtZhT7LU9ULSAV/f+pl20/Rz3yvSUTY6Eqw
         aW9y1w4mnCi2liZ4CfQWqn0sH1DwLXcL45BzarVguXXt5bYircWA9X/ENs0YY1SoVG0z
         QXREmdk8OKLS8KxSkGuTMYtBP4KsMj+vf1OTF3Eml48z8OQK2fAENHzN29CAr/TaIbrz
         +rzVWq0LoT+80jDbkB0ly+G2E83qk7No76FB/eezPah2aDw2gPw+Ig0Zs7FYWnOU9pbH
         5gEGMMyeuaP55dgTT0zvL/ZOslZLrOJxfNJof3Zez3NUSmHCLaEyJftArpquew4f1VUr
         4DmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3dwCE+v0GZtE62h3ykTPVjBYnltbx4TcDziVD3ADHYA=;
        b=xfzFh9L1i0/9BuYM8OJEi4hZDEHRJ+gkTVe1biSvXIVPnVw0AGF/7UY4ORGDxD1Io4
         T3oZ6yd0TcO+K9qrKqypI7TGbnsjeizkHZnlrDx0f5/PUDtaQdMkeeKGe6VQk8RPeBDR
         sv8muOiTNLfxa4mYFVdypjRNEaIcYp/FnRBOGFZAdxgpfabcKsdDLSbZebhpxN+IbqLU
         lN+UuzjztSFZGM6GylMYGQQHbSkoIqUuqiv5YJuH8FFb+catdFjUj7ChfevY0pga6GUL
         uhSgXiKrloLtjzDhCso/Fuuhin6VB0OMHfOxMfMXT78KCYIsHDmjPh3WkwtbWQNZQIux
         1cSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UlhR/VAY";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id i14si106205eds.1.2020.09.29.14.33.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:33:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id x69so7305292lff.3
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:33:22 -0700 (PDT)
X-Received: by 2002:a19:e20b:: with SMTP id z11mr1939035lfg.440.1601415201947;
 Tue, 29 Sep 2020 14:33:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200929194318.548707-1-ndesaulniers@google.com>
In-Reply-To: <20200929194318.548707-1-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 29 Sep 2020 23:33:10 +0200
Message-ID: <CANiq72kHEhTm3-7WbZwmoKQV5Qn9fD_sk+yrVrdj_K0AqT6dNQ@mail.gmail.com>
Subject: Re: [PATCH] compiler.h: avoid escaped section names
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-sparse@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="UlhR/VAY";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Nick,

On Tue, Sep 29, 2020 at 9:43 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> The stringification operator, `#`, in the preprocessor escapes strings.
> For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> they treat section names that contain \".
>
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
>
> In this case, since __section unconditionally uses the stringification
> operator, we actually want the more verbose
> __attribute__((__section__())).

Let's add a comment about this in the code -- otherwise we/someone
will convert it back without noticing. Also we could add another on
`__section` itself warning about this.

> Link: https://bugs.llvm.org/show_bug.cgi?id=42950

Is there a link / have we opened a bug on GCC's side too?

Thanks!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kHEhTm3-7WbZwmoKQV5Qn9fD_sk%2ByrVrdj_K0AqT6dNQ%40mail.gmail.com.

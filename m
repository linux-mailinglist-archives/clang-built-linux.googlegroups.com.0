Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBGXUWX5AKGQE2HBOHQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0B5258417
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 00:30:52 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id l8sf1450297pgt.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 15:30:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598913051; cv=pass;
        d=google.com; s=arc-20160816;
        b=JvKF8tYDUMwlYE0cV6WZfsnxK8vV1jJyfZNaE75I44TrxcaI46fqVdJDuoSmixt+f1
         wika6ZOGaYK+XcOXcwgIePitYinJhEf2V8RN8bffWkHcSsu7NXi9aLdWy71vU7870TUr
         gqI8Sx4ziq+0AsqdQyXW6gxNr5NSO894YJX2O+E1qN/kqtpjNFRoEhl11Q2sAkCk54Uo
         znKZutW2KbKWDbSQ1ulLmFOLLoUhc9oClzzu+90WgbSdB5nRE0+9kTFP4aVgJfQmx3TO
         3Fwxaxa6zjbmG4tismH66E500x5JE7ycVpPxxJrz7mR1Nz7h570sSMrPhfUAruWhQ+UM
         fGTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WHIT2v3auspjSn8QXjthTmqUkO7pYiVKlTCqa+k8DHM=;
        b=ajuy9GCBbzaGm3MuPa1F3Z4IRF5BdDGTXwwKTuFVpTvclmS5no+w5ghiCMalGM1uu2
         IvwviJRqGBbGTVVtBau6ePJLer8B7U2v4/KFTYPcOKvu04tatUwDyjzAprjr5RWxvw/+
         jNNm86J9YZL/B6XNQoJ1elwj5f9FWm57CHSPKp/QipA3fhgMxr1eierRq3B3dH5fDZym
         Avx+Dc+7wn0qsM1l/anSnqPvv5LQsAUoqvgbj0HzYXg/ep6xIHJ4uDPfowKQoqaRRjH7
         t/QxAm/6Mm/31Rkuvd85lvyiUfks/atvd2KDJ1CW75DmzcwrxZwe44KCptQUMLfHl5ga
         hU2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WHIT2v3auspjSn8QXjthTmqUkO7pYiVKlTCqa+k8DHM=;
        b=rTZ/hDB9XIZD0qayqK+ceah5jfgNpguSDi9cVkwQ+L8FfsyTWSc2DHhaKxKTaKsauD
         tNaZn/z7RcRBoKMfLt8KoZ+Ibw2d2WT4L8vgAvmMXP5uK56JTr1M9PM/fblLDLF3H7db
         TESK9QjD0kzbPzoDTCpZt8Qw2Xi4hQK5HTUoahh0OmTUWgpowtwfa0zMbVU3J67pTF40
         e21wYcLS7VQEkEnzwGE5mptlnXQPe4I2eHJsXnAPSA0vyQhGXg4ii65+Kr1f09Pq7NUO
         kG/Nat8MWDgB6urnuwuc1TFHawkk8aT5EJR5kAz3zdzdTMGjgsroeb5BPgxHTQRrEYYf
         dpiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WHIT2v3auspjSn8QXjthTmqUkO7pYiVKlTCqa+k8DHM=;
        b=qbnL68Dp/X1Lq3D2oUpPRJ41RS/jLEvxxyMghhT8VViMWnotmD83j4giGc+jXf0dmY
         OHjl/DRcSRJBN063txDlquVAIvQGN6LeCX0O4sBjymz6mONaqcJeZKdARquOR0L9mp/H
         oKeOpafpxRWRka0auH/2u58pBUojiMOWorBJhytI2XpLKTEkeOwQpB1m1dUn2y6Uq8k4
         yvWqxlMbVnIJi3NXuuB2haC7qL2j0g4ewBH1E4aLpWWqFoAaojAFQKZ16vFNMkYQ6fUC
         sbMipCBSMf0VvEgl9IRe90C20EzGDl6RV55jlH2yQ2PXc6MpUNvAPVVNHdINWKOWEABd
         DSiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307t4paHvbtxI0ojHPnqS/wRFKv9hDJv3iD52AmtXoUYpFWsoIx
	0mAA2th1zrDTVe74FKYS0W0=
X-Google-Smtp-Source: ABdhPJzGDyclNkH7fW3nKe0KogcwAol18Puy3jcFxOXklNv79LXs2BUzupe+5Vu0/m3y11Tk3PHK0g==
X-Received: by 2002:a17:902:bf41:: with SMTP id u1mr2713533pls.73.1598913050898;
        Mon, 31 Aug 2020 15:30:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:88c4:: with SMTP id l187ls3001798pfd.6.gmail; Mon, 31
 Aug 2020 15:30:50 -0700 (PDT)
X-Received: by 2002:aa7:96c8:: with SMTP id h8mr2990013pfq.108.1598913050237;
        Mon, 31 Aug 2020 15:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598913050; cv=none;
        d=google.com; s=arc-20160816;
        b=DKc7ikBHpIr0/3C4CILpi8Oyge4Ox2ErbnDasIECwfENN0arUwae8PC7lSsLlS6qei
         4Yjd+ToDuMmTxDhsMMZwD+oIHano2GPGs6Zl59KKAaZ7sOBblt3vh0Cfq59lEGRlJPLg
         Y8yuJBzHAEv30JKImdmD6oFvmffJM8WaT5m6udqqLEwG1MB6kGwk+3zynq0DGRovVeMz
         jDNoLhuq8WpXl1OILNmvvUDPIAi2NJ+fgfx2CPeSn/cVUVF1hiRrlcAOkwrOZVKij4sF
         vzwAIOCrRvWxKf8EIl09NzHJdnRMT8eU2Ju3ZmnVwXMM/ojt7bNXlPm/W21WI/rh4fA4
         QHUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=Z1JNg0NlRPIN79eYCNzN8q2C6O7Q2fftfsOJnn10JIk=;
        b=hsKUYBVjFFGu3mV9FBcMciilGO1o7K9OKKxSZLmfigdEKTP16sBX64Uf6IXKOw6SQw
         2bIB2+15Iy1OT1SBmUDSlf/uruuNG6ITwS4r1l73YOETtnB4+VbomuyuOwVuUWUSCWqq
         otCJfU12zEbv2c+I7Xx/y2WS0UvL4sJGw6I09Nk36q8ogB9yTBm9d64oK0iTEHkdOS4y
         6pZkoYQpH5vJG5+7yOQWad1RQenbZOmwPJGZWkTVbuiMlusA/ul3fRaVOjlNYjp6ouF3
         LRnKyyD3L5Vs+RVebXCrz/y6JlFyczIHcusmXDQVvEx7Qk3yqM6yf2woIY9wJ+dCbNQp
         766A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id lb11si52374pjb.3.2020.08.31.15.30.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 15:30:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 0475E7C0;
	Mon, 31 Aug 2020 22:30:48 +0000 (UTC)
Date: Mon, 31 Aug 2020 16:30:48 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Kees Cook
 <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>, Michal Marek
 <michal.lkml@markovi.net>, Randy Dunlap <rdunlap@infradead.org>, "Theodore
 Ts'o" <tytso@mit.edu>, Borislav Petkov <bp@suse.de>, "Alexander A. Klimov"
 <grandmaster@al2klimov.de>, Will Deacon <will@kernel.org>,
 clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] Documentation: add minimum clang/llvm version
Message-ID: <20200831163048.0cbeca5d@lwn.net>
In-Reply-To: <20200826191555.3350406-1-ndesaulniers@google.com>
References: <20200826191555.3350406-1-ndesaulniers@google.com>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted
 sender) smtp.mailfrom=corbet@lwn.net
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

On Wed, 26 Aug 2020 12:15:55 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
> small, supporting just one formal upstream release of LLVM for now.
> 
> We can probably widen the support window of supported versions over
> time.  Also, note that LLVM's release process is different than GCC's.
> GCC tends to have 1 major release per year while releasing minor updates
> to the past 3 major versions.  LLVM tends to support one major release
> and one minor release every six months.
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Applied, thanks.

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200831163048.0cbeca5d%40lwn.net.

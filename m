Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYVH6L7QKGQEMFC4WPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C136B2F1D76
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 19:07:31 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id o9sf631401yba.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 10:07:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610388450; cv=pass;
        d=google.com; s=arc-20160816;
        b=e0VCqLbWJFVHAC85rYDET/yRnqJ2/nLQWuTdH0vuTpoeRISylYwvy/rVkQzDzcyzmx
         ZGHCd7wgIQUo2pxVVf7pyIjoK23YSAYLWZmipAbAuSxxfU3VhYWnqR5zKZJu0vvSW1Kt
         mQHXPOezZ+UMAOsef8g3LjdYpb2h6jvoyryZ0pPjDkRCc4f0Re0ZQzfkvzXyNMxoDTGI
         oiy2/dupJgqidb2ZdI274rbyUpqWRD2MkQaMup/Q7m1Pf86TD5zmuWTdNFghE9uA5kYQ
         WCV0W6RwP7GHiCTva65jpTAdw0wY6MAfHTdYN+6aFlt3THVNnG8eDuVdaXNXURkTbVkl
         MnzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=CVEZNYLH8ccMUQEZ+lyMqdcfVzuoRxUaLR2S7SUwvcI=;
        b=xyh+T6OD+G+kAb8YIZlRE+iye3g3q9ayWwssO0dLt/CjNbcD+oieNn0/EDt2sAmRLN
         0x+8CXydDlHudZ0VI+cJJlUcxaY13f98/JCNRs1d80T9GRINmdMiMNz++PVeMCinTHfQ
         JCPJtytnEXLgYScOsx3lm2RdzULVDqfRdDUdBW7hxYVr6AjhDZncBhXMKKR1lPX1AqDO
         lbkq0NGAKgcRmzasOf0r/Y/xr1LQe07D4T8jA6jWQpSG7pbEwZYYUMKj6fTf5hCZPE3p
         J/q+OvJVranFevZcMbxzwsHn8UUMmsPLwF63znzJHvsYJKZDXh6Uh/09JNrqr2okZmBp
         YPcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lKW8sZ9U;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CVEZNYLH8ccMUQEZ+lyMqdcfVzuoRxUaLR2S7SUwvcI=;
        b=WGZwA0QscDehNNjuCJOfC3TLCk6SX/5bTatZnyebIk3PGcaJbkgK7Y15AvJoRTC6sQ
         S/Jy5ubjxL/lxnIuJSpEZgMqFR3x9RcqOtjk7936exc7EWdOlos5BE9vN3Au3kumTvST
         Qs6+KcverhZDfUHpes/tUeCBBcjjwDZVbqdFF/P4DgHC31k3Pmd6txKUdpZWzyfjkXoC
         LIdM+gQRExY33Madb9azFQZGD05Yn7vZC+6A16qU1ec7E9btYc3gZKIU6jtZiCjkDaUM
         hsGQRTH8J/wv3TSkaDHnc/mFAlmMuL5P0Ihxxq2MkVu042vJxWoGT7YLlNlekVPQ/gG9
         p0pA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CVEZNYLH8ccMUQEZ+lyMqdcfVzuoRxUaLR2S7SUwvcI=;
        b=A2ipNN8F4RifuZf2qjh9AG0itKmcSOLYQ/Qcz629kNC2I+iKPdnKfHBrLFMgrpd6rY
         2YQnCfDJLMxjfsuqMQTDKkoMmyumaArpCSEORPpD1FjrAjcgUKVjQqxW4axpe7BLLMEH
         e0dFXu1xpItBuGnQDz1eZQ5BU5SpM5gPvRq1hmT8vr3EZikCZvJAF6xWv3ULYYUBVang
         3NHiWCFiBgRhvhdAgWomLwZ3aRGMbLPCyqH3wi74KGz0TdchPVh3o+CoZtxHdCbDstNW
         oNFwhcjFGuyi96z2TMco12rnCB2P78G7pPCzJUKUhpgwMrOCZzV+Vm/fHXg8gBWn4TzF
         9L5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CVEZNYLH8ccMUQEZ+lyMqdcfVzuoRxUaLR2S7SUwvcI=;
        b=q4bM5D/fH8OznxENh7/p/YAH2TfxrtW/OQb9MDTLgl/g1wIKJ5+IdsdF565EVoElpq
         IjIJ2gweuK86oQA3VkTPfl2mESphgLK5WkckmM7L5eDaBVWNXz32cmq46Nf6qlR35N0B
         YqKXpfaO1ePE5lWWTbxOgRwhRctGAS1xxD7BRdIlRgEByZAdrzZzVbXiUXBxGM3dPwV1
         CK1jjkZRkPmNf8elPU4wEA+IybDuN7+0pNfsu/w7c2C7CqQW09l5OcKbesuC4Hz0C1ms
         iXE9CCAqUDvlJcFM6lSNrzINedV51bItQEWMK+nVSlngslOU6HBipbBgunuaLBiP/nY1
         yxjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53343Gk9PDmYH35Xjbtp0B5+jruo5DGZYKhwCVELuyVOXFX8MiNV
	NB5vj3GaFCYi0jWjW0BKQr8=
X-Google-Smtp-Source: ABdhPJz8glEN+B0MG0lS0Lzj5Mk3/STXYUIzeIWsY8EH+RA5PlDsNNRS5irGNIFJTcpO+L7xI7ET4A==
X-Received: by 2002:a25:ca97:: with SMTP id a145mr1436976ybg.221.1610388450673;
        Mon, 11 Jan 2021 10:07:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:946:: with SMTP id u6ls324155ybm.1.gmail; Mon, 11 Jan
 2021 10:07:30 -0800 (PST)
X-Received: by 2002:a25:bbc3:: with SMTP id c3mr1320776ybk.345.1610388450333;
        Mon, 11 Jan 2021 10:07:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610388450; cv=none;
        d=google.com; s=arc-20160816;
        b=QfGoP7Iv9fLaDd6srQSh5QkueZrwajJn+i90gJVzELqKF0HjiiBiddUn1dIp34PeOn
         Z50HEJSI7n3u+MHL+Lbj6N4qAx9Dy/+n2RZYWKE2M3KAqyvXFjZVoUuPMaH9l/5z8gbl
         WJ6Z3QaEfV2e92M+shAP+lyGdRXouj0zNQT0u66GadA01NP1HWUCXaTHuE26FfS0iab/
         gyE8wvxdltNvw9ZmPJRRXBO/URKhzh+zc8P7gUO2+5cz8C/nXfs6mjKj6PVvabOCcZBL
         Z+Kmy0Ai7TCIjrDkBN4FWndceeRnDMW7mP2hrEIH4E3NQD6ttj1HoDbyp4no7n3nkcxb
         rcBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4z26krIItp6xBdcazvzJCEsJB2HsmpfPK8beW8qFSm0=;
        b=wHKF7ClCEADxL8m80qJokLs2qdhfJpHMEsNSemgTeOfgByV6QsBJ/Td8NG8/kMvVps
         v1yC140FKBklY42BY767oA6Ai1dSxeJ3gRDggTg+9Cdn2QauHTlaMXtWtP81KrvxyDKk
         EKYYAz5F6N3SqojndREC9FL5vZAxMjwQnqYHzpnYgOc0g/878o5a0hxhlozHvOJZSUc3
         Ut383VHy3JGMZhWNZiDcI3ZgM/1CueLsK1JJY6eDBSskiXccDJZgOT4GXRbmfvTV0jRs
         nry0SPTN9AoF7mH4BOI7MeSsJE9HGnw2UTrtLPYMgxwamgA6U62x0srGt2rctivokhSz
         G8qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lKW8sZ9U;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com. [2607:f8b0:4864:20::831])
        by gmr-mx.google.com with ESMTPS id r12si78597ybc.3.2021.01.11.10.07.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 10:07:30 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::831 as permitted sender) client-ip=2607:f8b0:4864:20::831;
Received: by mail-qt1-x831.google.com with SMTP id z9so353993qtn.4
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 10:07:30 -0800 (PST)
X-Received: by 2002:ac8:488e:: with SMTP id i14mr827684qtq.372.1610388450028;
        Mon, 11 Jan 2021 10:07:30 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id p6sm190325qtl.21.2021.01.11.10.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 10:07:29 -0800 (PST)
Date: Mon, 11 Jan 2021 11:07:27 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Nick Clifton <nickc@redhat.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
Message-ID: <20210111180727.GA758023@ubuntu-m3-large-x86>
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com>
 <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lKW8sZ9U;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::831 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jan 11, 2021 at 09:27:48AM +0100, Sedat Dilek wrote:
> Is this patchset bulletproof with CONFIG_DEBUG_INFO_BTF=y (and clang-cfi)?
> 
> Debian has enabled this Kconfig in recent Linux v5.10 kernels which is
> a base for my custom kernels.
> 
> It was fu**ing annoying to see I have no pahole binary installed and
> my build got broken after 3 hours of build.
> OK, I see that requirements is coded in scripts/link-vmlinux.sh.
> 
> I needed to install dwarves package which provides pahole binary.
> 
> I would like to see a prereq-checking for needed binaries with certain
> Kconfig set.

Good idea, I have sent
https://lore.kernel.org/r/20210111180609.713998-1-natechancellor@gmail.com

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111180727.GA758023%40ubuntu-m3-large-x86.

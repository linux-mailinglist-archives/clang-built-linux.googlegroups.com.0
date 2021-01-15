Return-Path: <clang-built-linux+bncBCU77JVZ7MCBBCGOQWAAMGQESNURGMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B70D2F7602
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 10:57:29 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id i4sf3929497wrm.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 01:57:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610704649; cv=pass;
        d=google.com; s=arc-20160816;
        b=a4OmnRbdDrbo3D2WBKdx0PqEqJVPExleZpUy5PW64c8AWUsObabIqOkSk3cLzWSZbC
         Ra/LVcgz1KResDXG7UC/hJMnFOevz7lTLBBXV2qU8CrzoaUo2bBE8/L5NAquSTs9ZUmf
         ZuJyM1lilct4QLObQVSZtPMoK1dei0Zrylfuw1CL27+6ZjPCbn9l9oxakKTJZfoEwL7s
         9kXdcr2jhOD3pd8JBfLhvNDIHti/zDtkc3vcRg39fr1HBc7JisBYk+NjGAcKyJY5blYS
         cpw4Bmcrpj095VgtxxDOJmPxrpwaCH04Oq3SdxMztg0Oq1m9BioVWUySdA7sZOnrmPD7
         YpLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=IU6D04MMCHRbMvEUrPYitdntJhg0uw5nT9n74n2suL0=;
        b=SOijwUuedZk43I9QqluVNoIHWP7VemyAyfpsfhPRP0MajxxynAbcZaVjSMV5MT9Sj8
         3oNgPEis4JaPGRlOVRruXkGY6/wW9Y35AIw9St53cI0/6MAtND3e/7v1AE61fbjR975W
         hOMBidhJc0Gs0GyB0qPKi+2kwYChweqZixWmQrk7VxaR8VhJm+ADkbiCwEWVHVpRaGP2
         gXRbP7dlNB+1klmgWK8gSo29u+We/Q1woQMxfO6LeSL8o6ixZWyY2wYDDlm6A8J3WQER
         oZ8AyiAsdur11g84vFqW+3f0jZ9MV/2IzihcOMwSm6ClGdvfPWXRfMUtG5XOy7dR4Tl3
         C3EQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fd+GTpoi;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IU6D04MMCHRbMvEUrPYitdntJhg0uw5nT9n74n2suL0=;
        b=QDenNYsgS8Mxtwr477WLj25ySYcWwLEYYKL6IHFlO1PVHK1g4w27qG1i9bOLXraSxr
         fKmsm6FFVonDnFG8qtngUfS2q2ncU/jCpScW5n1qC0N4loiLaka6wnkB9EfT3fg4T0yH
         Ov4ntr2EbLfEUeX5N4XDCCpVXbBqcFzj4zEqJjYCvQqWmEr4JXolEKagA1T9iSwTXHKA
         W7w47bqHrKo0zFQ0L80kAbmGTwdxoIt2kGLFmggg7Si91OrZchKdPqtYwSqbELS0wYWG
         li8PC8S+Q2oVZfbrgiQFarBZn0FIMK4VmjAjEtXK1YRgsI6kH37OTAxR9ZcwaSUMyhA3
         J3RQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IU6D04MMCHRbMvEUrPYitdntJhg0uw5nT9n74n2suL0=;
        b=YJiZmRRh/AxXLC9oJTD0wE7I0zYem0lCrvkmE0hdn+fc4mJp6wZB+HQpeR2RVU1jmX
         LpT5knSRcul2v0p4REVNj9xEilfP/bKLOZcqEJOVNhEigVUr25fP0DWYc7oE0BW3qM7E
         rym3sx2xizk22Wq/eVedb3+RKVDDvlrhrmuk/XJvwRMjPdpOZcch3EhuQEAWQC36QtOE
         yKmHVblvRrgxXpjIuj+bXx9ZRcT7wC2XHuvhjFojIQF4uz1AzUoj/tbs68JXdEPcvmJE
         jB9kLKxLvhD1JeUYP9GTwYHzEGbithQbdSKsFZ4BNsKAZGGcXIIMlwq580zkqD9RP77Z
         0pKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IU6D04MMCHRbMvEUrPYitdntJhg0uw5nT9n74n2suL0=;
        b=jeRKYF7J7WyQTEPOJAWRX+LLDZL7wVaLlCwnzPtTcNajaZ94hyNN02GaKHOuXvhCGJ
         D0D9O696uE2gHWqyx4v2OpY9SLV3pAIfLb9wncjkH+AFlE/EmB/J0/eAqTLCQku5ZHAS
         hNq+2zj5Tdw6jrotG964zI69fJUsZdANcBSQ/NpBfHayyx1whXrzE4tTh4sBQZgHfm+A
         C5OuZUe1X/+mw8fz2OXnLuq6l/QprwDtPuodhxDrZRXFMs8kC5clnfSSjkg0dHrYmto/
         fUJz+ZTWl3HPIBiHqIGfKeNwK2Dbj458GXL/JF8TdXlUqafuag8T2Fxb43edVZSgVHMl
         kvSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tVe/ctHimwcU11chDhushvFWOYOVSBdLpuKOYhu/4WZulrKy/
	J9u33eDXtgYl0Avsq0A4LbA=
X-Google-Smtp-Source: ABdhPJyyoTVPQT1iNweiS/rvso88Sm78goWWC526cIdLFVsTnlhNj5DlT5JGNQKUXERhq+9GxfZZiQ==
X-Received: by 2002:a7b:cb4f:: with SMTP id v15mr7840711wmj.123.1610704648950;
        Fri, 15 Jan 2021 01:57:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls8529288wrw.0.gmail; Fri, 15 Jan
 2021 01:57:28 -0800 (PST)
X-Received: by 2002:a05:6000:1565:: with SMTP id 5mr12548904wrz.109.1610704648171;
        Fri, 15 Jan 2021 01:57:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610704648; cv=none;
        d=google.com; s=arc-20160816;
        b=K2WQPwfgZH3pzvl70d1noAXTt+v8gArefWkx9/i1E+zdRlv5xhEdUHjIxTEMssJnwz
         fC0+g6+UL+Y+hHsR7hdvEjkb6BfEjWefCRyo2oc9DDrCoIDPwNuvnoV9Er5DQ3FuaTag
         1OzqeaKVlit9uk1nNAA4r4FGbOLD3szvFLENOWtajpsPwyOVxlSBaarGX5Jy5oIdrrmH
         oVHH08kWx1cpYuHf870UwhwLyVPFR9ea/1ixNyRgOn5uUdfnr8UHiULzE4CIgT1o//5v
         OkPUfeFbT6OXErI+AFeK5gXAUQXaCAt/VgnZL4eOqVdLftYJWH9CizLTsaM/CmhmTgur
         Sdwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=POgvVyC4jcPdtazFDv/iJMehu1fClj51HjUyFhnLxQE=;
        b=XQxuIV0l9aemh0YaPaSAj21SvpI06p0JKW0zNaClG70HZQeH9J8AktcW0XgWii/DKy
         VjQ5TPfdlDCkUAsNgdQAAY3QuhYDfIVuiVZBlmXNR9yvKvggjOQie4C1jbGDoF48xXBs
         p5VPaRuNcU8vNpzyPavjyw7z84kBTKg6RPIRYAqmMIftJWL8gG4jGe5Va7AmTSFYnolv
         nmT8d4DOtv/VJlzl4aptVJxU6t4NsRTKB6soJZDlFbLF6U7Xb3WzKYveGSIeZfVV2vPy
         4we0yTembN2ArBs7RxId4BoZVw3JzMnoMSPAMTeatSfQMVB1ugV98i6HhP07xmjfQgGH
         sgqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fd+GTpoi;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id q197si175401wme.2.2021.01.15.01.57.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 01:57:28 -0800 (PST)
Received-SPF: pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id hs11so10103416ejc.1
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 01:57:28 -0800 (PST)
X-Received: by 2002:a17:907:96a2:: with SMTP id hd34mr3268174ejc.494.1610704647897;
        Fri, 15 Jan 2021 01:57:27 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
        by smtp.gmail.com with ESMTPSA id n15sm1508671ejg.5.2021.01.15.01.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 01:57:27 -0800 (PST)
Date: Fri, 15 Jan 2021 11:57:26 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Tobias Waldekranz <tobias@waldekranz.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, alaa@dev.mellanox.co.il,
	Jakub Kicinski <kuba@kernel.org>
Subject: Re: [alaahl:netdev-next 265/280]
 drivers/net/dsa/mv88e6xxx/chip.c:5431:9: error: implicit declaration of
 function 'mv88e6xxx_g2_trunk_mapping_write'
Message-ID: <20210115095726.lhq7pxyuy2cpgcut@skbuf>
References: <202101151745.Y7fr7PiE-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101151745.Y7fr7PiE-lkp@intel.com>
X-Original-Sender: OlteanV@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Fd+GTpoi;       spf=pass
 (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::630 as
 permitted sender) smtp.mailfrom=olteanv@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jan 15, 2021 at 05:39:58PM +0800, kernel test robot wrote:
> >> drivers/net/dsa/mv88e6xxx/chip.c:5431:9: error: implicit declaration of function 'mv88e6xxx_g2_trunk_mapping_write' [-Werror,-Wimplicit-function-declaration]
>            return mv88e6xxx_g2_trunk_mapping_write(chip, id, map);
>                   ^

Tobias, you need stub definitions for the case where
CONFIG_NET_DSA_MV88E6XXX_GLOBAL2 is not enabled.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115095726.lhq7pxyuy2cpgcut%40skbuf.

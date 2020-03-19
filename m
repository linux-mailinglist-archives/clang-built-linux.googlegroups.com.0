Return-Path: <clang-built-linux+bncBCXO5TVRYEHBBWX7Z3ZQKGQEFKYMK4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E82218BFAF
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 19:54:19 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id f9sf1371020wme.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 11:54:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584644059; cv=pass;
        d=google.com; s=arc-20160816;
        b=peCt34zcHC4unU1MMUck3y+fwyPLmySHrO+xTuNWkeEEBcIGdcogWlSQpUG7Xe0cC4
         qbGYNJNk7jlY7KdDv+XUltPPISqIoyou2pvLXFIf2sjGE6dVrJ5bYSfhlimHfaOBrPd6
         MWR2JCmplni6erFPfYkF7FqYsp3Zoi4cV7QurQPFzaglJzATIF0myVOtetx8TM1YoO9M
         iXMhBFE0tPbraLJF4dFBu+u2xEH7QC0QJoXdZpnEQu7jjo4p5WsMWjZ3EqXsUOL8keFr
         0VUi3B8IFNgdHHIG9mdhvN8iCY4jLxMN3YRW3pVdZHYOKoFd+4aAj1psBFjUSyBWjuWJ
         7fhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:wdcironportexception
         :ironport-sdr:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=SvXLfwOGOcwMaCmwVJw2LW1iwzfGEVfy+j3E0IXYKno=;
        b=HtzIpGQlTmA9oEA8WE4YETFvc+xTZom2J1fZ9W55Mzuxn1hHYGRCEcwoeWfu+o2sNl
         zv3OfhOr+O7LUY9bA/bOPt53b3hVpVRZ3EJ26MGVmWafl3nbPY7IgXbnekdwOq/POSZH
         uFLHIcq9+2Sm2/FBSqf7aS4NWd8PQap6exjl0AelDavIKoQz8GTzbnSIhMwgK04QMUa5
         aIfML2aPiDnT4pMXp535WNr6ImyWkwt9k1RqJWS6RZJH6CnBQcuCX18Ew966Lz7JLHfc
         +Hnbg7+y0y/mclINLG73pnBfxQ8+VBWzVYPVzbTZixIM5DXAj1GxcrJ8aNYFWncgJfbu
         mhew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=LHieSY88;
       spf=pass (google.com: domain of prvs=34054c40f=macro@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=34054c40f=macro@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:ironport-sdr:wdcironportexception
         :date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SvXLfwOGOcwMaCmwVJw2LW1iwzfGEVfy+j3E0IXYKno=;
        b=Z1NfDt+ZBI12CY218Ddj8drc9vlu0pud67mqlO7i24DChBL58V1fHrMx+lgGBOSKU9
         GZGU8higYiA8o47xmAjlagV3KqSpG84U0OgS5CTIr8IEfxZQHNd/zNY3auHzo9BCyW2I
         4qX9mBwnBtzeGs3xBvfld9pLj/wBpsgw+bGzRxFSOnfGyvgaAMQFIa+1rMBpqBKFX8bK
         6GDNqRprtr9aehREsN1xiua3uP38NLC1yXv0f6ML4YtKqm+cz3smgREPlVGdabgexJ+H
         nmu39R/Vrdb22KrlGf+tJB68Ov3gD8xTywz7DxcZfgs9bEPKUME19zSKBARtSFnYzreE
         fe3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:ironport-sdr
         :wdcironportexception:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SvXLfwOGOcwMaCmwVJw2LW1iwzfGEVfy+j3E0IXYKno=;
        b=mWagcTQbqWT6M1E3y7OhMSQAhoXGjS6lyb3hdvBeVYOjNtSD8KbXLI6UpwYUm8rcTD
         OyrjRjAxYCxG04rMvc/+QLQYp/ZyXtW6h1N/+zw6BWT4PlXP72WZv6r6HjZOb3aq4cgD
         jrtbITnWmNnpuCr3uBS1zMU7JuKFSLSDyVDf3lqWzGYbWGPIlK/8ez/NHk0hthzWn8Q1
         rgwvZbhs3YBzv3KjoeNq/z8c1ddF6EcVSCTqUrVDKfbATRtatGCTrucqmD09VAU1BRvh
         cMwmBn2Db+93trb+fA/vO9F/IA1BUjOr5mGGS0yfPhfrN1KMDr88TY1uXIyctEoB3dn/
         GhvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1mU05/MxhV3NHvkGSwHv/7lJ0ng8T75tArIZxIGwaq4NtQWuJm
	LRFtVlsMT/ftp+EX0/SUIMM=
X-Google-Smtp-Source: ADFU+vtDjNd6VJnabuYumNuI22nMfKipQOCeIx7iAd32P/Kh0Kuo1Cg6zgIINWn5KOcq1qdIyoST3g==
X-Received: by 2002:adf:d4ce:: with SMTP id w14mr6142432wrk.101.1584644058890;
        Thu, 19 Mar 2020 11:54:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls1642572wme.3.gmail; Thu, 19
 Mar 2020 11:54:18 -0700 (PDT)
X-Received: by 2002:a7b:c308:: with SMTP id k8mr5610431wmj.40.1584644058311;
        Thu, 19 Mar 2020 11:54:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584644058; cv=none;
        d=google.com; s=arc-20160816;
        b=IvFap39eVqdp3lAvL1s2E+iH89e+wFj6isDjb3VYMisDnMCAt8g7lqJ10BJ+zCiDTz
         QqhWeS2ZihKr2nHlrUsnXysBSGy56U+DwUoMZlcdf1ftAgnMBUcalrzmdsDJUA+3QNV0
         0q/43x1D00+MGY3fan+45GTq4Au5t+bXDGlxONoj5xQgJuxXRQtrLtUbMuh4/ThP3teL
         M2cHam3fYAwmGEuckeiSzXT10wMF+JvN6j47ay7xiGHyqzOoRV/M5FIogjD0jvFds96I
         IySzrvIt+Ucv9+MJvyvJq/LvUuZa5WFMI/JvgzdO0eAecZomVrkb8akxIY0u3xNaNbT4
         I+Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:wdcironportexception:ironport-sdr:ironport-sdr
         :ironport-sdr:dkim-signature;
        bh=8jSRRmePk+sgyVOpSOQ/tM3UVjLhi41A+D1AHcf217U=;
        b=m6yyfVvBFHDRvCPzDuv07/l3eQDTvnPDy/A5OUFZSiS0GTufSfPYzZsy6rMGVAGX4N
         vhYnXbtYnm5QrkTBdXhPAwCCjaBPB2TeND4WqjRUKm0QVtZFRpVcfxHZGY/pGVmHaIOJ
         79vjdvsHXHbBbhjaUx4LoXW6FXRzCQlX44+WAAa94Gt/T2qR4QRzjpLVIvGUWUyMC+Cw
         EaTqp95IiEVKqt8FUFyilBFdblGWWeQmis2Fw0Qw7th9Aum5ekjK8GjJ97wDSsqS+22Q
         2Tnq0aC31sMILb63Oh7rWCJ0vE3ykajRTPx8CgGokV5iyh44S5rs4dc3bnPH8gWHG6ui
         CqqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=LHieSY88;
       spf=pass (google.com: domain of prvs=34054c40f=macro@wdc.com designates 216.71.154.45 as permitted sender) smtp.mailfrom="prvs=34054c40f=macro@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com. [216.71.154.45])
        by gmr-mx.google.com with ESMTPS id y201si346430wmc.0.2020.03.19.11.54.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 11:54:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=34054c40f=macro@wdc.com designates 216.71.154.45 as permitted sender) client-ip=216.71.154.45;
IronPort-SDR: DlGlgsMv2bNjMBgL7DJ6kfrZAHkpWpBVD0/1UHg752/vQc7Yg062JK0kfiH4OVJHLATtm/WXpP
 H8anXbKwWbTiRN5vwmudf+YNGUnYk3VCt1I9C2wiPHV6scotYAZZNXUWfNXxzxLm10fJbWvcKm
 k4CKUVf+EJMNofJFDiXOVGM04ryVT24+fmwN4t9UEPd1QRvjWyWsjVOEny/AyjwcQ9/mi0I/0F
 HanJLjOgunwDdMis+bE5RvSwdzd9WiJTn2Uae5DnqsMrqHk7VxLEKkdxPBOoK53b73kWoCA9zf
 rWY=
X-IronPort-AV: E=Sophos;i="5.70,572,1574092800"; 
   d="scan'208";a="134434576"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 20 Mar 2020 02:54:05 +0800
IronPort-SDR: GZiy3IUXl51eTYR/jh0JrseyOUsXgG1H+j6oqmBESk7sNam4PT+bT9WDl74RdOUc/ZNwzkQ3Fr
 d3yLF4q+Iy0Di2hQZkgGLDCasW3Kkf8rHHd/f9K8FFiAO+ngQuSwwzmavCYn6lddUNbZr8UUxM
 D+zv2rrE0DGO+5m3Hm9G+xy8x9WXuU8QgkESUKweNFV99oaUhkxh4yWPX3hBW0wDK0f07d3Q10
 Z+42gDeKtyMKce5VVqYOcn65QQVoB5xH7XOdQkrkJRiwnVN/zBEu3PBPMiVy/R1/aT+pljzT9U
 jqjoPnwGjndnNv8Ys2n28tka
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 11:45:53 -0700
IronPort-SDR: 5Ioet6NlNa8Z1lxKkK9nV2ltc1Jb7viQ7mJqwGekJ9bqOepNSY1Lo1JaMfyVGc0/jORxm1p94V
 q8uqamPw6iL+LebTkkdUrGgbLfcnNwhUqstxaViKe8SjOPj8+vDb00RW7vTCN08cIctOLJ7ISz
 ba4Ayo6ZOQ6YKKzjHE4O2qj0HRSIogwQ7XyUrN/77p+2kcAkc3EKIu2FREGfbjNKkEMP6pQZyo
 SU5EztvWD3STXRH5r5TcB3UQYTqcKnH0pXcpWyJgjx78IdqLVyMCXIW0IXhH740t8w0NLA1TVh
 t9Q=
WDCIronportException: Internal
Received: from unknown (HELO redsun52) ([10.149.66.28])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 11:54:04 -0700
Date: Thu, 19 Mar 2020 18:53:59 +0000 (GMT)
From: "Maciej W. Rozycki" <macro@wdc.com>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Palmer Dabbelt <palmer@dabbelt.com>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    linux-riscv@lists.infradead.org, Palmer Dabbelt <palmerdabbelt@google.com>, 
    kernel-team <kernel-team@android.com>
Subject: Re: [PATCH 1/3] RISC-V: Stop relying on GCC's register allocator's
 hueristics
In-Reply-To: <CAKwvOd=co2R+gVGQmCGWj8U4iV2djFHLDiQRFwhEW8M_V4AeHw@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2003191847080.24019@redsun52.ssa.fujisawa.hgst.com>
References: <20200227213450.87194-1-palmer@dabbelt.com> <20200227213450.87194-2-palmer@dabbelt.com> <CAKwvOd=co2R+gVGQmCGWj8U4iV2djFHLDiQRFwhEW8M_V4AeHw@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@wdc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=LHieSY88;       spf=pass
 (google.com: domain of prvs=34054c40f=macro@wdc.com designates 216.71.154.45
 as permitted sender) smtp.mailfrom="prvs=34054c40f=macro@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
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

On Thu, 27 Feb 2020, Nick Desaulniers wrote:

> Indeed, looks like the local register variables are very much intended
> to be used as inputs & outputs to extended inline assembly, which in
> these cases are not.
> Link: https://gcc.gnu.org/onlinedocs/gcc/Local-Register-Variables.html

 There is a further restriction on local register variables causing them 
to be possibly clobbered as a result of a function call, which may happen 
at unusual places due to inlining.

 For an example of this happening see a glibc bug recently reported here: 
<https://sourceware.org/bugzilla/show_bug.cgi?id=25523> and the cascade of 
fixes following, including one for the RISC-V target.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2003191847080.24019%40redsun52.ssa.fujisawa.hgst.com.

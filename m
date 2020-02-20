Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFUKXPZAKGQEHBSKX7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D44166520
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 18:42:48 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id h14sf2639506pgd.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 09:42:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582220566; cv=pass;
        d=google.com; s=arc-20160816;
        b=DENy9iFVQt20gVE49ZkKbWccTQzZ+WCu7Sr/agahHX8HLJ66U3RusMlGePXx91a+V6
         q9omcXYeUWRWobEBv1m3e9JYPpsy3K8zwnThj/9z0CiCEd2jPUqQikHVPu1lZQH5MaRr
         WnS74WAxwW9LziqZAZcNvk6onTUxAgIVcJjYLSrQC5OyMKXd9v4EDl5X36zkNEfTrtFs
         kb6rPNmUwV+1Hx9Ynyp0u/UAdeEKa4Mohnm2Lsnz5+yR+nLTBOSyDlvAUC+4w8ZHnYUa
         UmN/hDtRmzpEuXKJ/IQFS8OK1khrkM5GAuaPPF6HVXULi4IkERxLpQqR+XqUgrfA3moj
         X/TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=reNgPnwASdj2WGfJ4qg6XHB/Z/vRytobtX7zCJvWbos=;
        b=M0pvITFlR5kHDDIqZkQ8HzEjv6SeTs6bk2k9fM5LCTJDhmgUTDRzFtEvsrQp+32n0f
         JF/R+iFsWptuXaIFPg6jxD3m8d9NVGi6IKybCFWPUYGVROewazudLv6CDACyvhRQt3s4
         ZULUUffyWYTpjO/YgCcHEN1Bk2mUE3QEBB0Dxa/wv67WpGOFbm1FR6Clb+4aioUCf4yg
         T6/wiqwvnP+TQBt1cWkPKghlLst/DPhD+/YAABTh412kELax4WneodAlK0mPXU6TmTXu
         BSpnSt+cNQeaO6MvDxjzzfK12E7p/PMq6vDH4IN9MXSQ+xDnYFDjXsmwYxLU/OvIWO/O
         KYQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tcmu9VVz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=reNgPnwASdj2WGfJ4qg6XHB/Z/vRytobtX7zCJvWbos=;
        b=tYI6/J/CYOmk1nSbTM++fZwcHa0aLV+KD7GIbpj3Q/uAoNgZpF5ukZNRTAhThZm7AH
         9cBtooF0haS3g7iVJhi+s2EIR21n42pGB1FynNYmqmm4j5gGs1uHvjCajCwUzGqjEnwl
         2wa+d2AOa7UOvQBsFeBr5LkgYvRYPzhtJ9lJyN4epuXo76fvO7H9nc5MZ0XfI/tOTP6V
         6ZsI5QNcjP2jFWypFhw+svIeBrNpW/Ok4Kjee2a1UGi4kOC3q+jpkaHsftjRMCJexOyl
         j7xUIkPaS3NbPplM9ztzhsrITPxdFs/DfbdyDsBJd8fWLu6GWa9/9+mutZpPp7/UoNDu
         ZJNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=reNgPnwASdj2WGfJ4qg6XHB/Z/vRytobtX7zCJvWbos=;
        b=n39tsDiieEjV2TKOJ51v8G1ir9Xnk/4tb184NaOfzqk7051BCzxbxcf5o7VSU11wHq
         AcgxKLYmbgexYU+UM3Ieut/JM13OqpPYhD5cahCDCxTwyt0UCb7j6UIIKbzacCQJI2hO
         m6vK2r4xarSooo/A2VBkByIZX/LFZu0sRI/wrYh5YIKjapiXrC78ndUJJSgqYIFbYFzA
         Q2597JEBAV+si+WawAOonVYt6NpjRCF187tlw9su8b27v7XiSl6qwzhNXoaAebodTJ/u
         c7hB+YScBUtPxQBckg2NPhRbmG7oR8vwiv/Rp7fJb5zTAJRwaRJ8E4Ywr8daoC30A8a6
         GGSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=reNgPnwASdj2WGfJ4qg6XHB/Z/vRytobtX7zCJvWbos=;
        b=nEUjeesJFDbdhrk0/thypoKVnyq98LfMKyOGiZzg023ESsBmB5jeiVTgiDa1hqOGNi
         PQaDKAcAU+o9ajiCIAzs+6fMfpz3ap42sij3V7278Wva6RrXRad+ADCMsO9Reo/aUizz
         JRypn5VMZ3ylOtEJqiaIjVrDRjoHMAguGraQgW4ttZ0uwLzxHvc5JVvdyx0Rpr8/XwjR
         /zmKGkp1KbsLCBVp3x+BqlhDCH1O4v/amDu52on4+JQPgMf+rtmRq3OTT9p/IJnxvid4
         3I+2eMkPHLixmPjUkM8kWGybBQY5JpgGXkQTPEkDEoremma6a0Ewoo4piy+1o2RYjU2f
         eCSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUvf7Jkze4HEML2GTpk42xYxbwY7VXBCSdHXyhdQAgQJ+vT4f7y
	1soNGhZ87rsa1aM9UzchspI=
X-Google-Smtp-Source: APXvYqy3Bc2iWAdyclv5bvuExF+IxmnRG6b0pXb6MkEfHwutLvAhtzrfcpAdR3mJNzesXrTmK8+xmQ==
X-Received: by 2002:a63:f54c:: with SMTP id e12mr33351830pgk.181.1582220566378;
        Thu, 20 Feb 2020 09:42:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3d0:: with SMTP id 199ls9438218pgd.7.gmail; Thu, 20 Feb
 2020 09:42:46 -0800 (PST)
X-Received: by 2002:a63:42c2:: with SMTP id p185mr36033972pga.268.1582220565977;
        Thu, 20 Feb 2020 09:42:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582220565; cv=none;
        d=google.com; s=arc-20160816;
        b=TQkHvRKownAPDfTfZ520cCONo2EOPTOxZRqiew5/8+T7/vnYo7vOseDp6ShCZZiRbV
         wViOPyUQhYbp1NXT405BtaVbf1L4CVgF5ejJawcbKtke/jbD2JITAvJ3IgKmh98dyyou
         oEamD2FH0CIGhDyIc2IlspSauZwejiW697iOCOgQGIRIa4DXf1s1327oWph5MS93GJH/
         rIub2iXzO20jEZhUBPytztG5NUBXh4lgDDauFLgiftQs1cP9jEgyJyuQDfw9poJa+Y9d
         izoTZVoSYwwUDyGJy+MHKxmI3JBWDApr32HQm4jkT7fUsjAEl4Wvd8v/F64RQesoSJ9N
         4LMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=V9Dt1rTQG+8mW00nE6RUDWzEXyX1oi0U9gjEJm6wv4s=;
        b=OnhLcURr7Lp57SbzpHE6rHiaNapDy1/hkfbez9tiL9PMtRDpBxRf043ZFrWr6ALG8Z
         k8Na97Brc8GzqCxkonnSLpk7G8QLizum45/mpjtfMsjqK414UEzhCKAEQ6XtUmBh8wix
         K/nGpuVUAUa6F+b6kKH9Y6sLzONgUuw3HDvcbM/Xs7UKhejh4r1T1Eso1erCGIBqrMf6
         sRXCm0gpm6jS9QwVZhhW5pJGDnSmDxce4XGsT2MgY+/yZ6qcOD5om3/5Fd50iQ+6ylRd
         SgMsQj7weAkAQt8LMu0foVt4yfQzQ6PyX4S1UGkbANPfS2ihQw3P7hgZqZjXomLLpjVW
         317Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tcmu9VVz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id k1si15128pgj.0.2020.02.20.09.42.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 09:42:45 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id z2so28381570oih.6
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 09:42:45 -0800 (PST)
X-Received: by 2002:aca:ec15:: with SMTP id k21mr2936699oih.35.1582220565218;
        Thu, 20 Feb 2020 09:42:45 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r10sm38162otn.37.2020.02.20.09.42.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 20 Feb 2020 09:42:44 -0800 (PST)
Date: Thu, 20 Feb 2020 10:42:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	sparclinux@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] compiler: Remove CONFIG_OPTIMIZE_INLINING entirely
Message-ID: <20200220174243.GB40621@ubuntu-m2-xlarge-x86>
References: <20200220110807.32534-1-masahiroy@kernel.org>
 <20200220110807.32534-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200220110807.32534-2-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tcmu9VVz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Feb 20, 2020 at 08:08:07PM +0900, Masahiro Yamada wrote:
> Commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly") made this always-on option. We released v5.4 and v5.5
> including that commit.
> 
> Remove the CONFIG option and clean up the code now.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220174243.GB40621%40ubuntu-m2-xlarge-x86.

Return-Path: <clang-built-linux+bncBCQJ3SX65YPBB2HM5OEAMGQEK5L3UAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FC33EE07B
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 01:36:14 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id u3-20020a2e9b030000b02901b787d7d260sf6596519lji.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 16:36:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629156969; cv=pass;
        d=google.com; s=arc-20160816;
        b=PwqFaDfymXSG3mZ1D1G3uT5uGlYebxYbjrwmc4HDVwlD73LHAQhELENyOvwiseqwCP
         dFvWFKfTSJjWdYUaHlC/6Ej+h5CszuqgI46wWr3nVTMRv+JFDhDihC856S3SozU3rkvt
         LrPqON6i/BHfTRW2caWUWdGw3S7jKihAHz//T40bOabA5ik81SxTo4XsJGbt2zp95w5/
         LfhSpa234g3FxNR89CzR3nEqJXrl32UJpirSsJviSVin3p9TGC68iJRYt7PhSXeMrcdV
         m/68HP2U0cYZMIdOLm96ZMGCEwF/lowpfqmluUyXXvvMWkkjOKYwnNhHxl7VWWQU0cA1
         WWTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=IHPsL3i8FiX4+LKOEROjNhuuIlaOutdFEm3WL8Fe+KU=;
        b=rqR0gGNEhyC4HTlSNaPFsN16uImnOcW4kA7V33Z+kjKeDL5oy3E7SH7h+CTxeudRWf
         HgW8AJ+Vs4FGJPnAZ76VEIz9yYNU84hbxbT8utf6VjL3q8aOTZuFANB7TOIrppweda22
         HcGXRPCo2CABDnvRQjqtwRwjKYbkzggwdEVizoaIm7fnuj09NVfDq05YFhZ0FKs9C0dP
         73ddsdRanQOLVWJgULBJ0yivFQDWUHrysHOE5qU1NhzMAthK5qgclYBHyl1L9LcFAiMS
         MSkmTf7xE3nqL+p3OFZIT0DTY8GaHlNMwIBfoFRdUbg48sX3uGFoYnI/zto60j+IKUO1
         xbOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ENGDL9Tq;
       spf=pass (google.com: domain of kari.argillander@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=kari.argillander@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IHPsL3i8FiX4+LKOEROjNhuuIlaOutdFEm3WL8Fe+KU=;
        b=KWZegIUU9qqgqPYHijqtXnxDKOGUvP5RSOBBGqo4V2qwot5UsLyhN1gNo4YYi/LYnQ
         8CELiDtXC9HMvGmTWwKe6bEsniQ1ZNdp01SHryQ5ypZlapcmGlQhStYvl00Vsd+OmbQP
         PgiqT+TCusBbXjHi5e0/9Zb2zDG1+hCf9UwrLth2tPc+xcBuQ91XhFJdz9RkEFopZcdN
         IjpXJYhhjsMmsBjV44dQnRieBosoIkcoJogP1QlNj7gTGZS+1M4STTouTiSOMSrmG2jd
         ocOV3E2GmeMVrYl37E3VBObrC4Zvy4uy0Ie0MYM0p4sjJrgJeLY0W6JBWS35KwgGZQJk
         o0TA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IHPsL3i8FiX4+LKOEROjNhuuIlaOutdFEm3WL8Fe+KU=;
        b=oRJMQQ2Y5zb83nAQm8nhcrMi+zY0A2RsSpfmUOZan5tzyULjq+4NocUtCDQ72JXtYE
         Asr0vi6U8Jjk9yU+ognVvESP84LE9h+zXL0zeg8HtsCK5QbOmnV2QJJAyTaNJo4LRuCo
         3c70boNKsKRybnbPMoGEKxMHLH+YtZ1ISo2eYdzHXIVgAyfEu11CBpIo4qCvt5D+cd3e
         ei8fTKQjgg+M6NjN37YZn+wds1GHSxL+lilKJvtAO2FGMs8BDiMZBDkymcq/EII2zxKc
         9FaWX2+CAD7POZtjHcpR7KHDk2Jo8ue0G93vkOqRguytY3gzbcuyOMUCDVf/wXmF1Pny
         CYew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IHPsL3i8FiX4+LKOEROjNhuuIlaOutdFEm3WL8Fe+KU=;
        b=WExa6PtKuBBKgxGCS+NKbqahbvrYXO35tMjAqzQd31dTezVwp6UnVvTzY2emqZtXSp
         uOzY6dMuj3IxJmeAw96UrCOmYRHDwJhsEW64gRs5TgEy4V6KEk9Hl1OH+SF4NJPvUunk
         Hl2Qdn5C9MD6YwbrHeolTDo41Kl6Mz+l8+JErXcDfMv7QFxBojpY4HLXMABQ12yIRv+/
         i+x/wPxNifkblYewscC6mlfu2/pM7+CC66sWqd6FqcDT7PLaVtn7r0ZSua5gfRkK461Y
         fNOCXL9lYZdhS6D+XrU5Ts02JyiDGxCV62MG9mJFgRsfiRuad0GmsexxxgNs/LlLkeYh
         oEpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337vU4N7butJno8IVQGetuuxdhjzqsHwtlDupDms5BoF9vxAaKw
	vLQwD4EU6IzU/olq1fW4sOI=
X-Google-Smtp-Source: ABdhPJzX9hjE/swIKQthmuu0NRIizWsoqSxa2fL5gNsM5/VZQCKaZCAxMLPHDOmaBwc4bAE+2b1YfA==
X-Received: by 2002:a2e:b52c:: with SMTP id z12mr559457ljm.271.1629156968955;
        Mon, 16 Aug 2021 16:36:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:691e:: with SMTP id e30ls216972lfc.0.gmail; Mon, 16 Aug
 2021 16:36:07 -0700 (PDT)
X-Received: by 2002:ac2:5e27:: with SMTP id o7mr190204lfg.610.1629156967684;
        Mon, 16 Aug 2021 16:36:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629156967; cv=none;
        d=google.com; s=arc-20160816;
        b=BtZBTzVW3y7KbIVgV6bDH46TzHs+Yem7CMDBsTwETlAZ61taGzOIxZouikXJKnu1Jz
         xoyPYsGYKSpELU3QFlP49HtMtQ3CYYARsAiYeUxwZ8+jAcphHQ6RRtC1nhfgq12EOjYl
         nm5wcEpfBCqOnRYLupNu2425XRj5NMCCHY9lzOBHoVj8D73z0ps8YzkxKGfadRLd+voU
         qkKSeUi2z54UnCdKvduE8nrWIFD2Biqhrpu50/Fk1qZOh103Dr5Ltc9KvSnynaFYxekV
         dpb7oERdmTvO1psKR0PjL5QuG97vc9aAmAOcz/I4/sdboDW4g6+bxaNlWnKB1q5iU7ix
         IW0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fCbJk159OmyFs2BOwXv6EYcMlLEdtAwxcbo1kGetDyw=;
        b=hfDEV03lq4d+5RtIEIrAsOu00aJYBE0wUCjCQovt7uALRq2Ql7gqFi8ZP/u6H6XN3f
         e/jhULkviURb4W4HRxn82alsTrecvPM2Zx1VFaJ5f0HBcei6hBpqgm/xPm62Zh/ZP2Wf
         Sl8AR4qyxNps5y9Sd3rptJI7vOxoUQh3Usi9cn49H3C/qAW0aC/4uxIO38icbTcj6SXF
         6TD/KYqQ7DxgoUdvb71MUm8fKxp8QIHMvngT6nfKMtT4QDNJzUBADYC/yEZD9iMHWEJe
         j7T6JcBVFEqOPM+7n2wdVcRKAmjGqLsZPRCkSY2L3UNDx0KQNpRJyNhlzE6V/BheKUJq
         2weA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ENGDL9Tq;
       spf=pass (google.com: domain of kari.argillander@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=kari.argillander@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id j7si24110ljc.1.2021.08.16.16.36.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 16:36:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of kari.argillander@gmail.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id h11so29834010ljo.12
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 16:36:07 -0700 (PDT)
X-Received: by 2002:a05:651c:3d9:: with SMTP id f25mr562965ljp.334.1629156967491;
        Mon, 16 Aug 2021 16:36:07 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
        by smtp.gmail.com with ESMTPSA id e7sm45939ljq.9.2021.08.16.16.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 16:36:07 -0700 (PDT)
Date: Tue, 17 Aug 2021 02:36:05 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
	Nick Desaulniers <ndesaulniers@google.com>, ntfs3@lists.linux.dev,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] fs/ntfs3: Remove unused variable cnt in
 ntfs_security_init()
Message-ID: <20210816233605.w2csfyhmebicw6k7@kari-VirtualBox>
References: <20210816193041.1164125-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210816193041.1164125-1-nathan@kernel.org>
X-Original-Sender: Kari.Argillander@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ENGDL9Tq;       spf=pass
 (google.com: domain of kari.argillander@gmail.com designates
 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=kari.argillander@gmail.com;
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

On Mon, Aug 16, 2021 at 12:30:41PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> fs/ntfs3/fsntfs.c:1874:9: warning: variable 'cnt' set but not used
> [-Wunused-but-set-variable]
>         size_t cnt, off;
>                ^
> 1 warning generated.
> 
> It is indeed unused so remove it.
> 
> Fixes: 82cae269cfa9 ("fs/ntfs3: Add initialization of super block")
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Looks like it was used for debugging or way before index_find_raw()
needed hint or something. So this should be ok.

Reviewed-by: Kari Argillander <kari.argillander@gmail.com>

> ---
>  fs/ntfs3/fsntfs.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/fs/ntfs3/fsntfs.c b/fs/ntfs3/fsntfs.c
> index 92140050fb6c..c6599c514acf 100644
> --- a/fs/ntfs3/fsntfs.c
> +++ b/fs/ntfs3/fsntfs.c
> @@ -1871,7 +1871,7 @@ int ntfs_security_init(struct ntfs_sb_info *sbi)
>  	struct ATTRIB *attr;
>  	struct ATTR_LIST_ENTRY *le;
>  	u64 sds_size;
> -	size_t cnt, off;
> +	size_t off;
>  	struct NTFS_DE *ne;
>  	struct NTFS_DE_SII *sii_e;
>  	struct ntfs_fnd *fnd_sii = NULL;
> @@ -1946,7 +1946,6 @@ int ntfs_security_init(struct ntfs_sb_info *sbi)
>  	sbi->security.next_off =
>  		Quad2Align(sds_size - SecurityDescriptorsBlockSize);
>  
> -	cnt = 0;
>  	off = 0;
>  	ne = NULL;
>  
> @@ -1964,8 +1963,6 @@ int ntfs_security_init(struct ntfs_sb_info *sbi)
>  		next_id = le32_to_cpu(sii_e->sec_id) + 1;
>  		if (next_id >= sbi->security.next_id)
>  			sbi->security.next_id = next_id;
> -
> -		cnt += 1;
>  	}
>  
>  	sbi->security.ni = ni;
> 
> base-commit: 96b18047a7172037ff4206720f4e889670030b41
> -- 
> 2.33.0.rc2
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210816233605.w2csfyhmebicw6k7%40kari-VirtualBox.

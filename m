Return-Path: <clang-built-linux+bncBAABB4M5USEQMGQEQUTOKGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3213F9C2A
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 18:12:34 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id p1-20020adfcc81000000b001576cccf12csf1998446wrj.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 09:12:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630080754; cv=pass;
        d=google.com; s=arc-20160816;
        b=lhPBAqtZHfCnoNyzQbxwPa+TNAxMqxTje7cFZC2Xz89nP6r7Cbs8gvN2H2as5o+wng
         qg4Ca0+wP97hqQIRZXA4SF/Fy06tRGKt1bpkDcra2v4B0tACN3xffRCq7ZwK/c/l0WR8
         OSGSxKVaATTKCAMW8BPt6cPQQn5Va6OBlJ5QRQgFy3sv74vFMYnxUs9MBEgiKkQUS15I
         UY7OltXPYzFffwiU+WeFWIKk6JOPJh1oc+y3fVJu9Pu1lYDhJSC8ixkx1bel0tGvEqMf
         kPDSKJYlIO+BAEY4G2HUz73eLT9g93CLfA66YWEbclyxx8kU84L8/nJ2m6qzLY3EtOGv
         0BZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=qRMOqVtvIYI775DheSXP19+SayMHNHLmNLGSLUfK53Y=;
        b=Z+uJcdgH4JdaokxoxGNcK/k1x3PYNLUATAa5mMiIepT/x4kLdNy+jkdsNOkxUO9ydJ
         Y91NJpKp3h9JuUk60fjEmRkAncMZkh3Z7NjJJ816imcSVKVQwitC4AiFUDFYO9RBkL/j
         6xHDEbQvnYBlpffBK5k2XByKaVRKBj0HNlXykpxp9ZJ17p+iwgD53ZNgtl1M0yKc/FLN
         8+x/RzvUT4arCRWbWFIZ/YNbMmS5n/ed30zHjciXv0r5nqQF9RSday429QCztOnOWi6/
         v960xgTl/FfC64baHgdSn9y8fs6MjnUPsxgcWtmuf68BqBPzfVOKxdeZTI504uz0Kd5t
         DPaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@paragon-software.com header.s=mail header.b="mmwjc+/X";
       spf=pass (google.com: domain of almaz.alexandrovich@paragon-software.com designates 176.12.100.13 as permitted sender) smtp.mailfrom=almaz.alexandrovich@paragon-software.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=paragon-software.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qRMOqVtvIYI775DheSXP19+SayMHNHLmNLGSLUfK53Y=;
        b=PZOSJeQ8wC/2D/aCkX5XMK72n5fXODHruLrBMGsp2NhOyfW2yPvZ9rhnKIWWmVCS0C
         xdHKTGWYI83lB+ZJNoo7G0Oj0onatTnkhMfvmaQNo38oMmOpVhyq5COEVPqnQOEDTbRN
         e3C5ajJC4Tt/ZZbiI4K7ri1zRpANFvmbsevd6+IcBrP8Q0RcrjdiIJfcEGvDgvT5kg4o
         ELplZa8YA4fsdpQ1jYkLfJ+7mshFf/p7KTKLIMSihUAMgvMvP88FHGq+9ynMA3CccKg3
         /9dwOBf28Si5MYS6TNomv5ZBMGvqSI8906QnvhznTQj65lZYWVyAPlId+TgNim4BUUaS
         7hDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qRMOqVtvIYI775DheSXP19+SayMHNHLmNLGSLUfK53Y=;
        b=HhWlCNkDmeRMAW9q31C3pb1PRWpFlw7CfEnZrPP5WDqC2255klhNooyyyWzFt2lVuC
         IGWwi7FtGTF02zaBdCekUzptPQnnaQ0VegsnAOk47lmJXtuxL/FZlSEMmx6C8E3TtW0Y
         I0rwdiiAyUSYl+q5twHTR/pzcCwXyk+sM02GQavkPAqrDvSTJw0BXAl8bDAESqii6ho2
         riJVCngukTZJDoPiZPcmuJZf5BCunZ2DBIvns0H2eRCci+fHihpPqPDVD85KP9NFFoRy
         oRF5SBTPoSOASMmvEHUerjOJ/DLI8XLI7eRlIs9M75EW5yJxaW5QtpdokCkjZlLwcBxa
         z97A==
X-Gm-Message-State: AOAM530wtW7cNdaCsZVwKXqrZ6akyqTaGqcPR41rcmE8iUngI7JusjNv
	4kRPw3QaojhYgPM6fApISE8=
X-Google-Smtp-Source: ABdhPJwFSBJxNXArp04Ya0gVptgCJyYmeNz2RaxIrC6b5MtZl7zZ3dTDs9Fxfb0tGimYyn0HcytMHg==
X-Received: by 2002:a1c:a544:: with SMTP id o65mr9686969wme.53.1630080753204;
        Fri, 27 Aug 2021 09:12:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1:: with SMTP id g1ls6488996wmc.3.canary-gmail;
 Fri, 27 Aug 2021 09:12:32 -0700 (PDT)
X-Received: by 2002:a05:600c:2295:: with SMTP id 21mr10693139wmf.84.1630080752503;
        Fri, 27 Aug 2021 09:12:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630080752; cv=none;
        d=google.com; s=arc-20160816;
        b=HS8FTr5aapjcbpYhUfeJ+fd4rKP9ChlMLZYMrEwKkxuBTERAjZnCVL/8D6K98d1msL
         pGpJLRoec0OyEKKP0RKEYFbbrPKBhLK0sNLXgz2A4EgRCXSihtfFuCIk0VwaWYGbXXby
         FQM3YzDaw//Jny9jr/15CPxxQh67vYoyqe8Fpbguib5+ITP15SSYlSQWgU59iPVGGUFt
         LjgTJJI6Dq/Imh8Cd6nkswxGe8bH2t2UbJi1ERBJ9AdhFHb4W3Z1lw/WiS8Ox1y7rEHq
         jmv+EG2PHBZxvgOg1J4IQZYpB69AXNN+qtaza/zdBQVARmbG6e8JNA8IAVGAK9NQGqxg
         haJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=iNQdaFxj9PapAs2JkFepfUmmWDolt7ZtscncwVTKDhQ=;
        b=avX3vM4GUO95yYBATkJXkNOXhPQpmCg3rwtj6Cf10igI891a1pxXK33JhZH9UhYyAX
         N2mWaUDAbh4kCig2Nxxt6LK0gjyeowyO7H1xoZ1hGF92x/8T6VVrG6W4nRgCYEEM1ayR
         709cURMe/fxMdO0ID4IGGFt5vfzlnPxNzdCSFHbeQeAV8M3ubC/yG9ShNitYBtTtetab
         iGNOSW8uzxIn+dzLYTl5Bi5jfDxXbfieOTQVgAtIq611UwcLics/1mr5aGbxTnMZto4T
         jAcgkPQOq9uYMjNz7TrKMmfrOo0WSs3XmLXPw0GWgUhZkliZHglO6qLTlOyUdjCg87SG
         uk5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@paragon-software.com header.s=mail header.b="mmwjc+/X";
       spf=pass (google.com: domain of almaz.alexandrovich@paragon-software.com designates 176.12.100.13 as permitted sender) smtp.mailfrom=almaz.alexandrovich@paragon-software.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=paragon-software.com
Received: from relayfre-01.paragon-software.com (relayfre-01.paragon-software.com. [176.12.100.13])
        by gmr-mx.google.com with ESMTPS id z70si1020908wmc.0.2021.08.27.09.12.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Aug 2021 09:12:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of almaz.alexandrovich@paragon-software.com designates 176.12.100.13 as permitted sender) client-ip=176.12.100.13;
Received: from dlg2.mail.paragon-software.com (vdlg-exch-02.paragon-software.com [172.30.1.105])
	by relayfre-01.paragon-software.com (Postfix) with ESMTPS id 586ED1D45;
	Fri, 27 Aug 2021 19:12:31 +0300 (MSK)
Received: from vdlg-exch-02.paragon-software.com (172.30.1.105) by
 vdlg-exch-02.paragon-software.com (172.30.1.105) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 27 Aug 2021 19:12:30 +0300
Received: from vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b])
 by vdlg-exch-02.paragon-software.com ([fe80::586:6d72:3fe5:bd9b%12]) with
 mapi id 15.01.2176.009; Fri, 27 Aug 2021 19:12:30 +0300
From: "'Konstantin Komarov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
CC: "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] fs/ntfs3: Remove unused variable cnt in
 ntfs_security_init()
Thread-Topic: [PATCH] fs/ntfs3: Remove unused variable cnt in
 ntfs_security_init()
Thread-Index: AQHXktVDRbExQDMRsEusl3oDXux+g6uHlt0g
Date: Fri, 27 Aug 2021 16:12:30 +0000
Message-ID: <0b948fca469a45f3b65804776f11b41c@paragon-software.com>
References: <20210816193041.1164125-1-nathan@kernel.org>
In-Reply-To: <20210816193041.1164125-1-nathan@kernel.org>
Accept-Language: ru-RU, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.0.26]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: almaz.alexandrovich@paragon-software.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@paragon-software.com header.s=mail header.b="mmwjc+/X";
       spf=pass (google.com: domain of almaz.alexandrovich@paragon-software.com
 designates 176.12.100.13 as permitted sender) smtp.mailfrom=almaz.alexandrovich@paragon-software.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=paragon-software.com
X-Original-From: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Reply-To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
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

> From: Nathan Chancellor <nathan@kernel.org>
> Sent: Monday, August 16, 2021 10:31 PM
> To: Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
> Cc: ntfs3@lists.linux.dev; linux-kernel@vger.kernel.org; clang-built-linux@googlegroups.com; Nathan Chancellor
> <nathan@kernel.org>
> Subject: [PATCH] fs/ntfs3: Remove unused variable cnt in ntfs_security_init()
> 
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

Hi Nathan! Thanks for your contribution - applied.

Best regards.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0b948fca469a45f3b65804776f11b41c%40paragon-software.com.

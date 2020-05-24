Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQ4UVT3AKGQEJJ3PNUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B41D1E040B
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 01:59:00 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id g8sf18187619qtc.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 16:59:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590364739; cv=pass;
        d=google.com; s=arc-20160816;
        b=lsmTOppGvpBUiuds3fv8UNIHrBGO3T7pfHkqBxi8no6wQqw+NZ+x9m2JKfh1/YASBv
         94kr/9qh9R3OLYvw00GdzmYo9Emdw+idfVQTBFlQSPulkd2nMaZN2WvJQGgsL/2LHoul
         fGQnMkYHUtdCyV2KYn4T2XyjpHTrFz9UQwA9iZOLge+DzEHKySrI+AOByYJSlPNCHC0Q
         g0VRc1MKhQ+oIoi5dEj/zf70S0Xlk6pI0rorq4ykhuogyHTa5GnUKshqNGzJbCY6gHAq
         6mhTEc67Q+hbofkc7ocy/m6SJPeJ4DeStXYf/BUeLiovDA3mlv3wjPZDELZLFI6qUgCa
         ptfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=dsd+Ua2P0pLxCutkFbHCGSlFUniFio+REffx4bT4/7M=;
        b=zY9T1gi4ZFOZzhibB+sSdrxu1Ah9auZQqjbTiqkp4jN1Qq6SaO8wPOSrjvR/QPV0hd
         aQKHCyKxfLoRkPqFUvt4OUxhjR8tj9zQPIKBb46AD5ls73vIbHbLgCN1x20AQzKcxmW9
         aHvkSX5ScH7uOl9TLszNpOybFrr0zEusi/AR6p6vnZmaXpIeOQkhr4d69UE7ITNH/UMd
         MSKzewXzcN2oJUVhME3Oqvx6Lo74VYqfTr79G6ml0fr3hA4SwSQIfgq3t/nIa7afhdyL
         ZaIDfWBcmYPKQrBUzEjORtOSediimDliZVQgrLnWBBAOwM/EWSqMmYNf/HPIJy6OOUbe
         2FXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mi1T6Zts;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dsd+Ua2P0pLxCutkFbHCGSlFUniFio+REffx4bT4/7M=;
        b=C3myNUsIaXQQsRDVoQqu4eurFVzxEP+3+4W2NkSTwp7q//g9vQLNLyu7PNQnY3mb2P
         v0JJsg3DMl3O1VhmtVz9BDvZAg9Y0zszOwq3DhRU2ynQ80Kh4AKgDh2W3DZ2XMme2rLb
         U2LJEjhvV2g/YOtFTb+lK9TIyjqEmiOsgImzUlSRPjXGgnwSNqCJ5RW4qo0DQCf54pPB
         Ff/Rk735fsDehK4q0PBgldAEPnpNhn8r57EsIVzqG/yL0MH7JwEWbhs0mLczGdNXaqUR
         9/LrR60tUMb6tuKeiKOiML0+GZpM3Gm8Yv39J1chn9oVopCvl1L+9mywL5Dy06QmZaeW
         F9Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dsd+Ua2P0pLxCutkFbHCGSlFUniFio+REffx4bT4/7M=;
        b=SwTJesOsxu/zel6wFkUJguytXZ8IY7fjdBRBOseXWH2+omJIaX/1CxuAUDk+LYBes/
         qSUd5XhL75so89gFk2pRY4p8hYMXecPbsWlrQak3W3ioj7Zo9ZimlSRKX+I89t05NlDE
         ajGkRhoWz/+ACMtskwjNrFcKoG3w4fJmtSYQIr6GDzZK52GcNkC3GgJdHP9QvtzUdO/D
         Wsl53LDXQosK45ck+t2fuw8MlHG0pinYcPhKiVSNtwoA6RcsWBJwH9K4f0RR6jRq4Uo/
         JQaFD5VEzQ3jDVeLBolG5IdcTTb/VerSXVDS1s2GS47gevav9F4CTGMBaxvW7AxTsc3w
         zOFw==
X-Gm-Message-State: AOAM530NQMdLxL0H9FgNSfW4I+rovUdggMsz9IvD+KXZ+zPTJbr+Pz/d
	NSwcaMn2hisOfMshl3Jf8cU=
X-Google-Smtp-Source: ABdhPJwvsVvd0bQz2czYZLd1j917rewdAqXce90Og8WyCoaDU+4iLjpnT/qiMt3g17WWtxMOeLYbkQ==
X-Received: by 2002:a37:655:: with SMTP id 82mr14786517qkg.77.1590364739657;
        Sun, 24 May 2020 16:58:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7406:: with SMTP id p6ls3414094qkc.8.gmail; Sun, 24 May
 2020 16:58:59 -0700 (PDT)
X-Received: by 2002:a37:8ec3:: with SMTP id q186mr25664060qkd.231.1590364739261;
        Sun, 24 May 2020 16:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590364739; cv=none;
        d=google.com; s=arc-20160816;
        b=ROC4Rh4CiyGAFYdS6Dp1qckOaJXTOcCj22co5imscQBlPyneRTacIa4W5BQFh2yCAB
         3E7aiVPW2vojbS/zJuYOLYbRrLS/0SYSwidHKzpT8h2lRQDF8nuySype0dD1Voqv5/1E
         +Hmha+03QHZR9tOKCXG2wMLOZauGRzc78XEY54d3eSZkMwU3hLI4Gjq28s0NWK2F7kq2
         GSVsgjuyz/lZBorDbHn99IN7zSllnRkDIadsek3RWVL4A0ug8IU2qINo7Qg1Guej+8QD
         36CxpM/uD2EVo7TDWPfKJKAM1NvjUL26E0u1GFETeoWQZxZnT0wPVXLe6DZkPdRTQ6Qm
         22DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=X1mIyAkwbgWoxrz90REt4fG4bY063H1i6zQ27Un6aao=;
        b=d1wD5E4JcnUuBb3W/csZ948n+rIwA6jfzCPGhR0rqNC+M9gXTPfF3wc2e6hQVyljFb
         80gIwg6inc3p9jr8oshoyndtu+mtCYEfO+qpCgI4rXlpm37R3he8pDdS0rc8zfUr+ToW
         KpYHcrzx5Mpbn6RM8caWJpoPf2T8mg7aMRwPpPem59aaMoGOCcgzRqxmUUJXbk+otwS5
         NzLOftBeld88TWpm+hOwFhAJ+Xp0GsJDC3GJl2Pqy7+4dyHwMc48E5DPVUevEhh0hnhV
         KsVBy/YzMc8gj4Y9n4C60at/O9eYveeKtvjHXk4R3XsjFrvrG6xOJa/vUGHaDMwTSy5v
         a6Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mi1T6Zts;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id a23si217107qkl.0.2020.05.24.16.58.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 16:58:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id x12so12722137qts.9
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 16:58:59 -0700 (PDT)
X-Received: by 2002:ac8:6a1a:: with SMTP id t26mr24668127qtr.331.1590364738911;
        Sun, 24 May 2020 16:58:58 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id u3sm14638550qtk.63.2020.05.24.16.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 16:58:58 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 24 May 2020 19:58:56 -0400
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] x86/boot: Remove runtime relocations from
 head_{32,64}.S
Message-ID: <20200524235856.GD280334@rani.riverdale.lan>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-4-nivedita@alum.mit.edu>
 <20200524232214.i7rfpdzoam6tpt6n@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200524232214.i7rfpdzoam6tpt6n@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mi1T6Zts;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sun, May 24, 2020 at 04:22:14PM -0700, Fangrui Song wrote:
> 
> Probably worth mentioning that this works around GNU ld<2.35

Thanks, I'll add that in v2.

> 
> 
> This commit fixing https://sourceware.org/bugzilla/show_bug.cgi?id=25754
> also fixed the bug. (Just verified that both 2.24 and 2.34 have the bug. binutils-gdb HEAD (future 2.35) is good.)
> 
> % cat a.s
> pushl $z_input_len
> % cat b.s
> .globl z_input_len
> z_input_len = 0xb612
> % gcc -m32 -c a.s b.s
> % ld.bfd -m elf_i386 -pie a.o b.o  # has an incorrect R_386_RELATIVE before binutils 2.35
> 
> 
> Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524235856.GD280334%40rani.riverdale.lan.

Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB2O45T6QKGQE7F4G6EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DA82BFEBE
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 04:37:14 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id u26sf646435pgl.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 19:37:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606102633; cv=pass;
        d=google.com; s=arc-20160816;
        b=KmJ3Z5YtfIPl/AZ3mOXIpgZXzClsHLdqInfLrfyv/Ilh9vVGR+0YAmOe4hryvpD622
         LPqMtjrGm1kvEJqbRgUBnG6ZtGTPEytyarhGcB+xsN9iuv/sE+zUILLUfP2hsc+UOsSE
         GsGJQLhrY3pnCRil1jXo/syywo45qhweWuGiL5mJ20ZyZAO7uZ2XASssG968VdmAnqXH
         vWjaeVIcV0DLzzOVAQ7PB8xM3XCe328rQk68vkKL0+IRHO3VSSb07Mmrnr2Z4bRYXDGX
         jVSF4NP+gaYDl03KdtT6YKE+IvFjKjnrTfAhvOKvQiCbVYlfp5Rc5gHqrNBJZyvGYCkI
         z2Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=X/NPLiJpMuMNFWYiOP6PmwiZcRfAqnZMGEg8/c1DWAA=;
        b=PsI31AbMLliE3fcEOcHK12Pyd+sPPeOkksIbvSrSgzCirMHxY/DYGn4nu72URDJ4jz
         JqcpidhdDZ36ow7bsPUoWouJqjLpyjrQgYtJX1RHBy/60felcjGOHLoEbqniB/7wroPU
         AM1OgxA/kpqN8ZwxNDfwKOcMMqqlJIsBL4aV3o4Vy7EjGj9gAkbHIIghhoUTYN7ABJox
         HCJzmpbnnorN/xdylqbAPJXCQX19M6UvcFtbVvdOang7y9G2sQRzj16czZywjPK1qjRo
         Agsf03cjkZuLX7TVjN/KLUO8PqibTT9Nkschle3ecHRRnRBXGgaU6MhtNPHZOTYkNZq9
         fu/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ooQtKrxm;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X/NPLiJpMuMNFWYiOP6PmwiZcRfAqnZMGEg8/c1DWAA=;
        b=fwB/61jMi02j0FUcDK0r02Ecvyz6WU53rojMQLnxTwQBfu1UeFXc8gV8wdeoVtnQ2c
         g7Yy5rD2jBJZM896m/AsBnR8hz4ufyHzWv1Up4SaOU7Umcoe61XTLJRs5mB82NZD7qBQ
         FjHyaygRtu+Tj9nkEY57eQ4dtdsScCKjlwCLvyRxqOrAJuVokVjmbY0TT/0/FecKDXPe
         KcI2MKRYL4cRt+PAme+65YTR0b4vicmYI1Lb3Li52AVUHmmPz5RnKBtwyzkm61b+pNUq
         zwWlZalIuFM7nzjcsRVgtjyJntaCeWDxTeU/tR6MKNJNtx6vUY9vlGAYUOY3+qKvtl20
         oYvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X/NPLiJpMuMNFWYiOP6PmwiZcRfAqnZMGEg8/c1DWAA=;
        b=Y/pIrLTRE1Y5fT56ak+NcvtW1DJvyoFMv1pBZpI4uvyEcOnWIs+ni7rWeJFfda8LDL
         77tfvCjgcH2o9pEwz5Yd9Tu5W5FxRAUN6THXcWilcBWwg1+IYQRW0K7zmYhphp0KMXSX
         OD04Z/IL1XnNyVEbWHM8G7IVvKRU9Uo8KOJVyY7CvJBQ/WiHp+PxAYhh1xn5L47Wqbid
         EGbISD9Zyy2JjxhEh29CTA+vviTXUUGYPDZC9NaVAmiySR5ZgZzUTQQYhU7ROXudEkuU
         PcVpN3WLAWhtKTr5rK4C9NypbRczwKVXbORhvOBzBfH2psQfN/jAlq8tv0MUQxk7Xo0Q
         Vlmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EIywqmBPCaCW9Bdhf6EGbEbhC6imLvi9Zc8/7+JmMgjtmJsln
	eFzVTVGSKkwMd0/53tPSE08=
X-Google-Smtp-Source: ABdhPJxKUJifSYMo/V1KCRIaM4Cc2fuleMqrxb5wD2wr/dXFQfHy3gocEAdMkESDOj0bIgC15HGQmQ==
X-Received: by 2002:a17:902:bd41:b029:d8:f07f:4815 with SMTP id b1-20020a170902bd41b02900d8f07f4815mr21907191plx.70.1606102633322;
        Sun, 22 Nov 2020 19:37:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7745:: with SMTP id s66ls4598089pfc.0.gmail; Sun, 22 Nov
 2020 19:37:12 -0800 (PST)
X-Received: by 2002:a65:6215:: with SMTP id d21mr21248812pgv.134.1606102632691;
        Sun, 22 Nov 2020 19:37:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606102632; cv=none;
        d=google.com; s=arc-20160816;
        b=GKBQqkDaFPO0U3MEvY/JOJLO2raaeO2KX/JrnVpp4krqIm1bjcmH0+7RhbxP2sSaUq
         62d2qFwRSNXJCL4+5u0ksOUbIKbNs6OqsekgbSBUXgrfIFlGTcbfvFEXgi7nviiW/26h
         U44ap8uPQRQHdwfBBUIHgVi2guUdLhpp0YpAV2jPw2fgTICd+Md2E0YNpV131K0X5f7X
         cVG2JuwFjmQT5l7rwPF8XDWC/+6KSq2/oUJUvfU0t0jUGMM32FstMKCsFJv8SPAnI1rs
         92M+llJDXp2L0ixtTMDKh+kf8DS7MrVRaibUVwcSs0aBr1Da/NRBZ/MtnPO+FPMnR6YR
         +JDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=YL64JWX8+POTNkn/GZ7B+nszuW5O8YQqSfoss8+OVhk=;
        b=bIdLtGThtxOM3EZkLUy3M/pAB8G9sOh8JHDmEe/PLnkksnaDbcZ05XEFbNBOkjow3R
         IwcccggyXaCCXN1FTLrZfYWdLrT3RXbAydfI9iTzJPP95D4g1s6kBl7rzzvumaw3VUkv
         s9SFSN+R+KVUJntnMirVaIpxy1D2ejjdbXM3SyPSlUVntTbBO01OQMGvXzuTX52JjAVn
         cwOwa18/nA0Vh+PnPPK9rhiqSIe7bt1hVMZ/W+04Dkpeypzr1FlukOdPUjskv6+M+bSB
         Q0r4fseLH9Afal7H1LQxJqBrdiKPBqJSXA7PoR7XGa3cTkHljcXSIcTYl9CyFI/zwou0
         Hbmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ooQtKrxm;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id 38si585086pgq.3.2020.11.22.19.37.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Nov 2020 19:37:12 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 0AN3atpv024944
	for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 12:36:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 0AN3atpv024944
X-Nifty-SrcIP: [209.85.214.181]
Received: by mail-pl1-f181.google.com with SMTP id t18so8193846plo.0
        for <clang-built-linux@googlegroups.com>; Sun, 22 Nov 2020 19:36:55 -0800 (PST)
X-Received: by 2002:a17:902:ff0e:b029:d6:820d:cb81 with SMTP id
 f14-20020a170902ff0eb02900d6820dcb81mr22899656plj.47.1606102615011; Sun, 22
 Nov 2020 19:36:55 -0800 (PST)
MIME-Version: 1.0
References: <20201121194339.52290-1-masahiroy@kernel.org> <CANiq72nL7yxGj-Q6aOxG68967g_fB6=hDED0mTBrZ_SjC=U-Pg@mail.gmail.com>
In-Reply-To: <CANiq72nL7yxGj-Q6aOxG68967g_fB6=hDED0mTBrZ_SjC=U-Pg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 23 Nov 2020 12:36:18 +0900
X-Gmail-Original-Message-ID: <CAK7LNARjU5HTcTjJG1-sQTJBFqohC1O8aAvFs3Hn_sXscH_pdg@mail.gmail.com>
Message-ID: <CAK7LNARjU5HTcTjJG1-sQTJBFqohC1O8aAvFs3Hn_sXscH_pdg@mail.gmail.com>
Subject: Re: [PATCH] compiler_attribute: remove CONFIG_ENABLE_MUST_CHECK
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Shuah Khan <shuah@kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
        Network Development <netdev@vger.kernel.org>,
        wireguard@lists.zx2c4.com,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ooQtKrxm;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Nov 22, 2020 at 5:45 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Sat, Nov 21, 2020 at 8:44 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Our goal is to always enable __must_check where appreciate, so this
> > CONFIG option is no longer needed.
>
> This would be great. It also implies we can then move it to
> `compiler_attributes.h` since it does not depend on config options
> anymore.
>
> We should also rename it to `__nodiscard`, since that is the
> standardized name (coming soon to C2x and in C++ for years).
>
> Cc'ing the Clang folks too to make them aware.
>

I can move it to compiler_attribute.h

This attribute is supported by gcc, clang, and icc.
https://godbolt.org/z/ehd6so

I can send v2.



I do not mind renaming, but it should be done in a separate patch.




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARjU5HTcTjJG1-sQTJBFqohC1O8aAvFs3Hn_sXscH_pdg%40mail.gmail.com.

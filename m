Return-Path: <clang-built-linux+bncBCVJB37EUYFBB5HT2GAAMGQETEYQOKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C1C308F03
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:11:18 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id u10sf6470476pjx.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:11:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611954677; cv=pass;
        d=google.com; s=arc-20160816;
        b=hNPVCsW79KhLuntBk+EGoMyN3DlfBMYnhqrzaegpihs6cBxGYEpF3s5wtpQizIL+Tr
         jkjWMoQqwPNRWQ0Fh80IdDx+f2pTYSyIkLO1e4vXke3xmf/qBkT33Xe4rsuhwJyWSmc5
         iLuD0EKRWMp0HROVeqb7wbKv43eNxquNGQVgEXE0wvAe291Am6r9KcvipyeR+9ULaNHd
         lOEwL4euCJsRygySvU174V3dMfIQv1/TaZk9t6HjFziK+U4EJD3Fw06dbzX9yaSvmwwN
         G3CQ6SJrUsRUr5hdMocY8rdruqr92BDL7zJTBzkZbHR+41uYivWA/tJ3xY5HL/3knaIq
         mXlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=fxKx9a3aPpxR3OcxHxQkVehjFQxBUFUKTEF0JPARp1Y=;
        b=EP04NWKpDcwLzQBi3QmuXBPnXQe/5Id0+b/1Sz/mGlHt3370+WrCKsALOmzVJMCRmp
         QpRRgQVewRCRhLtSh6QjCT8psKMbhRab4RWy44yr+KSz4gXCM6e7OKq5Pa3Y0dk80CNI
         A57ZygMZwpQUamIDE4PZ/Zry/9tX2ABtE878ZqYQfFy8b3Abw2whyshsVRyVAAqt6V8g
         +tGhCynd57OdIGvK/8lCDsPTI+IvT1/67IXoS1/y3kqSiMjmqOxj9Jj89FC2u7RgisT3
         kJJ43VKl4lDTGaQnkmum2qDwnwG0eKU46jCZcDh72m+qptiS5VosbbYCIkp+RckG84Gi
         F6sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TMoakqyk;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fxKx9a3aPpxR3OcxHxQkVehjFQxBUFUKTEF0JPARp1Y=;
        b=KLAM6YovlkBK7vwlATmASkAOF5XM2bYzI97yxDbUhTXkpQzhQrj2pCRUu3BhT0MF9j
         aC2O/7XfJFj1GflnjphUM9GAi+h4egmL0xjUqRECGhJyLCtYm9aAN1Vi0dKjVdYAU3N/
         E7SDvxsgm9jCTNVsUx6SxjfDNkdX2A851ew0LW1/BNB3R1DuKnG1iVg2xObr5jySzMQu
         D1Etm6SN7iaKi9JhzK4xyb7uAPXWlQrxjLigim8iz/29a26RCK4wJl3Iq2bvwMdI+0nP
         nGZikqEVZ9mURkTcJrzTYIJ737zXOMsMTWpGCbG6pv7qHshhJW48aS0zJt7AS9apaGDu
         bVdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fxKx9a3aPpxR3OcxHxQkVehjFQxBUFUKTEF0JPARp1Y=;
        b=P8UzfoEDP0NqqUIAbiucYzTp0S4zz3mli8Ed28NlfUK5Xtg+o+LpMo1Uy0O6Ntnhz9
         cIokr3T7kxDdDi1WeZWeK2yBxTNavqTTX5XjJxnBcN5SJcfavkKxEmQVlDcHP7vNtXsU
         CE1hRq4CsQyDuhcoHqCNrr1UA2kRej8/aopmSJG/p6eUb29IgN2LXLWvRGX9RjVNlxBY
         Ehh/MkNKlA/k6ML+cXM1xHSinu6tOGJ1Xy7f1/BWjLJl7d7UxST9NaGBLL3oUh/F2Z8C
         NUmk1z1EdZ4v1ZINggBMeHDqNUcnKWWKFHF8L/D2H4cL360X937Uf9uvo3uIE1EP4YcF
         ijug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530E1sfTu+BG38Ch8U9sIFBFcGuHkp2IPcC8R72GReWi3sZ0/uX/
	/0yj/18/miMo0gWSD85HW7U=
X-Google-Smtp-Source: ABdhPJyeAECgG/BQka1gb8OIkNm0PPmOs0O/D2ZOJYJZRdD5tCL+rLiXFVNqQ0ZRMEW6EkXibcm3gw==
X-Received: by 2002:a17:90a:5317:: with SMTP id x23mr5976442pjh.154.1611954676966;
        Fri, 29 Jan 2021 13:11:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:511:: with SMTP id r17ls5219622pjz.1.canary-gmail;
 Fri, 29 Jan 2021 13:11:16 -0800 (PST)
X-Received: by 2002:a17:902:c106:b029:de:af88:80ed with SMTP id 6-20020a170902c106b02900deaf8880edmr5806227pli.35.1611954676198;
        Fri, 29 Jan 2021 13:11:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611954676; cv=none;
        d=google.com; s=arc-20160816;
        b=us/HC4O+A7NA9SdTqzSNrIwhOkEE2NJS4nxT90uIOnf6sDifuVfeslyhwt2/t6RmMH
         12WKx+Fbraw78GI09NUExHGn1Jl7zXCJ6w2Imry6vjg7QS/JKBTMWPUOwa+uD7O6TCKa
         LyjAs/wBtCkFq+NFg2oha/ReapxdJzvjg25brTd8TlgfQMRIjGmSL+sxYqInDBoMl2sy
         NrZmCmtN0xK6zRco7QNDHCWTrd4xkdRzKR2I5Lnw5LRt1Q/AW9rZ95SC3XRuRylTe3aw
         SsTrRawLdE7JYGxVhvRKajYBePKoukAG1xQzvWWIAVUa2b9OIX+Ad90TlaWt6tOnUGUd
         RtTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=shT0OeZAFzbhZjSLEQmMeSn6z+pT7stkEH8f+xcX918=;
        b=ikFiDCSspgMuAKTJxWXyYhd3hgQ+Tzs5iM5cmWO5pbETTdZZZqXF6JSAVeqDN8X63l
         qwhbgo8tJuFdXFuBDuhKUtbG9fBp9NsujhYbuZBgDW0Gqrvoy1vOm8jZZwJMIGfPz3kv
         GnKx2LNvE1LzzQwcaj1NBF6hqGJAN66OmWgYXVhOJLI6ShnF6zIm9WP5AyGF2Ku7dkv7
         dFs8cOR/tj0a4pwRBytZI6SLNk9OqbXIbIig9idcBOOO8Dc9ojpkP9Sn9ipyPmVHY7IX
         ZkZwpdL+WRbhmwgsQDueIJOX2p3ITVpq88Etc2A63YdXfIAOyy8B1COs3QACjQ5DpHJp
         HIeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TMoakqyk;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d13si720190pgm.5.2021.01.29.13.11.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:11:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-385-Vw16BpxQMgqiuTPKuage9A-1; Fri, 29 Jan 2021 16:11:11 -0500
X-MC-Unique: Vw16BpxQMgqiuTPKuage9A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CCB9B802B46;
	Fri, 29 Jan 2021 21:11:08 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-112-64.ams2.redhat.com [10.36.112.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F05C5C257;
	Fri, 29 Jan 2021 21:11:08 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.16.1/8.16.1) with ESMTPS id 10TLB4Bq2565520
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 29 Jan 2021 22:11:05 +0100
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.16.1/8.16.1/Submit) id 10TLB3RH2565499;
	Fri, 29 Jan 2021 22:11:03 +0100
Date: Fri, 29 Jan 2021 22:11:02 +0100
From: Jakub Jelinek <jakub@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nick Clifton <nickc@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
Message-ID: <20210129211102.GT4020736@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com>
 <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <20210129205702.GS4020736@tucnak>
 <CAKwvOdmuSaf28dOdP8Yo6+RyiviMNKcq8JY=-qgbwjbPVwHmLw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmuSaf28dOdP8Yo6+RyiviMNKcq8JY=-qgbwjbPVwHmLw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TMoakqyk;
       spf=pass (google.com: domain of jakub@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Jan 29, 2021 at 01:05:56PM -0800, Nick Desaulniers wrote:
> > Wasn't that fixed in GAS?
> > https://sourceware.org/bugzilla/show_bug.cgi?id=27195
> 
> $ make LLVM=1 -j72 defconfig
> $ ./scripts/config -e DEBUG_INFO -e DEBUG_INFO_DWARF5
> $ make LLVM=1 -j72
> ...
> /tmp/init-d50d89.s: Assembler messages:
> /tmp/init-d50d89.s:10: Error: file number less than one
> /tmp/init-d50d89.s:11: Error: junk at end of line, first unrecognized
> character is `m'
> 
> which is https://sourceware.org/bugzilla/show_bug.cgi?id=25611.
> 
> $ as --version | head -n1
> GNU assembler (GNU Binutils for Debian) 2.35.1
> 
> Maybe GAS should not need to be told -gdwarf-5 to parse these?  Then
> we would not need to pass -Wa,-gdwarf-5 via clang with
> -no-integrated-as.

That is what sw#27195 is about, just try current binutils 2.35, 2.36 or
trunk branches.

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129211102.GT4020736%40tucnak.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSMX2KAAMGQEAJYIJVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A06CC309006
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:27:22 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id n16sf1380576vsr.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:27:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611959241; cv=pass;
        d=google.com; s=arc-20160816;
        b=A0VUh7ZHIxDJIyZLbCYlO0fZseOUBgWh6f53yy8criv8PgkTGkeLzUlyiaGARTbtjE
         VELwmqpsILuEkFuZjxUg11G8fns8oH6SNBeyZcycFsGOe6L2B+YzSSIFS7aQaWxD1dhm
         dnmeZ9SVOSuJN74eYzhcZHQxebzpUl4rYO2/nuqn4+UrSpXV1CGdOs4KeFMDgsnhfEUV
         aXGxP3ndhILBqK8r7Ty1/h4Vn0CdKj4Ic+Mvhbq7GtnG/LeZQv7xw0o3VKcL8kU+zCjG
         6Z7ehP5TPDik0sZSctKTcEz4Ejoj8pOkD/+ETJHSZqMB6WyIPUwgc2sn1yZyPE170hc9
         iOUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ul4xm3HqQwJHdLa/4xI9Y2KXpA0L3hKkg5HrzK6buHo=;
        b=IQv5umVybh36gXgqo/GiqvJa9NhcTNaNapWkS0RDt27DxVQbTRz6JWAUb+6ZBC2CBU
         LA2o2vMfqVYnNS2D389hbWw2/sxpYm7ynPhulYrCiVYlxZkwIMJjxfb76DV64L2sQ3ZA
         yD0r1feexsuRV/sUkwzR9PrpRKDKcirBxfJ5DMMlL8hJXTkNHnl5EvJA1zwDquyKL6PV
         UkgaEvoAxV3kiPndxyda3vsgcjTH+8nTJDnuYylvV3j4VU+a/LBo0tq3bUiqW4/s2Ytu
         qdrttP3trfcHK8E4IOuKb/sJ/+u9y1Gn40SkHlur7glb4GQSE18GAQxfHbm7Z3HRUBUe
         sKQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FUWhIb9F;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ul4xm3HqQwJHdLa/4xI9Y2KXpA0L3hKkg5HrzK6buHo=;
        b=j3NQk+GUKmI1L0PcUPmC+LXUoDIPrNNEm8XXmYMBVwHdQG/4X+icQxXUIvGZWZemrA
         YWcy7QHnpHZlj3DjYE3F7UOB/dmrKR4QFJUZwSuOvLuM5GrymZ5Yf9JbYwHcgtVqAOn6
         Wog//nQHo9lSnOw2aaOf08BPGq5jMQRs3R0/L9LOIG383l3ePWnbDAdFDLtfUTAG1fOw
         No2WxtJ/oEwCTi+qoL1KWfSXYcYpGcjmkczcDX5EDhlkGYY6Ks+ASi6ehsEuEoSFzaQO
         IjmUDsYOjJKdmpiE3X/idiJm2BCvv+VQwnk/OvPJT25dEMP6x63VjUljSloAfK32iTXH
         2SIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ul4xm3HqQwJHdLa/4xI9Y2KXpA0L3hKkg5HrzK6buHo=;
        b=U/FYCrdEBvUDDlN+7ekAQHuGoncPbEWO9fEKx4gdaROsR42sBptFsZB/vu6Dj8LVSX
         Vs0ebjyeEXKoCvfCGzZKn2OXfgPiCSOVI7HdsAjEuJpTDQMcqAkOYWXG6qR+lpaVO65B
         sVlzPDASIh8kM37pzjS1ne1vYE5t61/JrRwCxzIsg3KQf93/RoXi24hG7gDYmlRT9RL4
         lSozFxsBn4grtA8gb+TxCZSHGAfTKME8erLmnjJKGJBmhzJOo2miQenjxa4kGXDfPziJ
         Xen0iY3JFIxUHlwrBIHFjCR+gfQataJiqmrdKBMH8HK6txOON4Fdbxwa77ACyHngZ2zi
         4i+A==
X-Gm-Message-State: AOAM530coUNllrqJzeWcX6yr/a4WnnValnIghQiVLtmr6/vIWi/SxLtH
	rPIbF6uOYn8QgGqM+hKvTRU=
X-Google-Smtp-Source: ABdhPJzNxjnCtnI05OZ9kQkPB8t+cT1zZpQflsZ2RKZXOxV113uFY/4GV7AWVcROoeEOELXrk7pt2Q==
X-Received: by 2002:a1f:4901:: with SMTP id w1mr4318688vka.17.1611959241750;
        Fri, 29 Jan 2021 14:27:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e306:: with SMTP id j6ls1341741vsf.7.gmail; Fri, 29 Jan
 2021 14:27:21 -0800 (PST)
X-Received: by 2002:a05:6102:526:: with SMTP id m6mr4455370vsa.2.1611959241308;
        Fri, 29 Jan 2021 14:27:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611959241; cv=none;
        d=google.com; s=arc-20160816;
        b=b/XGO5nRs+1NdG3egT6DPLRqh45lgW39gHkfMEl23n393CgWRcNrnQYhDj3EQm3syQ
         BqgLdTeISY2uhma/6fzHYxsbkMyrYy94UnUqu/xU/VwH6DgkegRC/0qiR+qhHkwljpBv
         0u2yW9hnbSPpUv5iequ4lcX4q3895GmmA5C8NiUuBrJz2Pe6NUjIKLCDdIYH6jyQ0Adm
         pBK7CAuBOkhEZir3XwtAT/XfBeV0bvqTHoQEGcX6FTELp2G7HE/JcRmssa1k8oNJCmH3
         kxhVvkTWKvze9PtwMkLzhN4tMJ7HDFJqiJkeAgw0DM3bFisTOavtghFVtM4An4t6HWxz
         PUWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n9U4McTABtuqtNOqLAuCMtCG5shXKI8/Zm0sjdl2VjY=;
        b=hs/CgTMHhYps2NzRRJRg/9Dnnw5HPK4VEHnTEbKE2T3cqDb+KpSFQJzyiCVytHek6i
         siA6/yincJlda9jXzZP3mJl2loBkZJfs9y/lz8wORF+l0jX73Ml2vPsHIkvtDWo2Bfh7
         dDJbiBv0wKQP3Z5tgq+/kGbMSUHa19GsDw6ktfXb+2JstIfSnlhoEuxbtNxRhxdzYls2
         D2aRqpYd8/5L6r+xlMvpsC3iQEW1f4qebhRMPOLhJc/8TMalzH1gXY8OlIkiKI9hcOYy
         HSnVAUq96f0MJZdZ0g77Mc//rOsqN/it528haejmHJqOSGM7AcxV0cKwSsoKeO7/Qup/
         vszg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FUWhIb9F;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id h123si600911vkg.0.2021.01.29.14.27.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:27:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id t25so7620840pga.2
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:27:21 -0800 (PST)
X-Received: by 2002:a63:7e10:: with SMTP id z16mr6729496pgc.263.1611959240285;
 Fri, 29 Jan 2021 14:27:20 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <20210129205702.GS4020736@tucnak> <CAKwvOdmuSaf28dOdP8Yo6+RyiviMNKcq8JY=-qgbwjbPVwHmLw@mail.gmail.com>
 <20210129211102.GT4020736@tucnak>
In-Reply-To: <20210129211102.GT4020736@tucnak>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 14:27:09 -0800
Message-ID: <CAKwvOdmrSNNkfFc7U3h2qWnNc+okxeBravE4Huun_LOv75_Bvw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Jakub Jelinek <jakub@redhat.com>
Cc: Nick Clifton <nickc@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Yonghong Song <yhs@fb.com>, 
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FUWhIb9F;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::535
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Jan 29, 2021 at 1:11 PM Jakub Jelinek <jakub@redhat.com> wrote:
>
> On Fri, Jan 29, 2021 at 01:05:56PM -0800, Nick Desaulniers wrote:
> > > Wasn't that fixed in GAS?
> > > https://sourceware.org/bugzilla/show_bug.cgi?id=27195
> >
> > $ make LLVM=1 -j72 defconfig
> > $ ./scripts/config -e DEBUG_INFO -e DEBUG_INFO_DWARF5
> > $ make LLVM=1 -j72
> > ...
> > /tmp/init-d50d89.s: Assembler messages:
> > /tmp/init-d50d89.s:10: Error: file number less than one
> > /tmp/init-d50d89.s:11: Error: junk at end of line, first unrecognized
> > character is `m'
> >
> > which is https://sourceware.org/bugzilla/show_bug.cgi?id=25611.
> >
> > $ as --version | head -n1
> > GNU assembler (GNU Binutils for Debian) 2.35.1
> >
> > Maybe GAS should not need to be told -gdwarf-5 to parse these?  Then
> > we would not need to pass -Wa,-gdwarf-5 via clang with
> > -no-integrated-as.
>
> That is what sw#27195 is about, just try current binutils 2.35, 2.36 or
> trunk branches.

Ok, yep, I can confirm.  I just built ToT binutils and I no longer
need to specify -Wa,-gdwarf-5 when building with clang with
-no-integrated-as.

I will update scripts/test_dwarf5_support.sh to check for that and
update the comments/documentation/commit messages to say binutils
2.35.2+, link to https://sourceware.org/bugzilla/show_bug.cgi?id=27195
instead, then drop hunk that was passing -Wa,-gdwarf-5.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmrSNNkfFc7U3h2qWnNc%2BokxeBravE4Huun_LOv75_Bvw%40mail.gmail.com.

Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7U7ZL7AKGQECFA3T4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BE32D6980
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 22:15:43 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id p20sf4923543qtq.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 13:15:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607634942; cv=pass;
        d=google.com; s=arc-20160816;
        b=PKOg5fHWEQt4BsfXhDPf9GzppWf+WuhbHNh01a+N4+phbbJervISyRvq/QphxleT/3
         0CJ32TEP8U3/FLgSnKNlZ0nK2lmdtD768CwXIIrUbjVQUh7L0GgukVjJxkD3P1qthFQn
         sUO3lRXBnoCM5/1kvbfjQYWkbSYkKM28a7+mG9tp2HTCBbAYBXWKOfdgTapIpYSme/Fg
         pn1R/bouOmYZpn0FxHnHIFeG5Cg3vQY3NK/EzW2hFPayEfQNgUbUM614akyGYGfqpBuF
         W7iUeulnlUz2yt7EfH+UMdlGIJhcU0s7cy8wdcqAJt9X6+dj38gmBv8Lrgn0vhY5hbh5
         XYpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bL6MwiXyBUSJOHiwEn6xD6zGtVE6wkesKGxiYomqCCE=;
        b=hMkUq2O2LcXBOGrAQxzMyCuk5C8uYeqbIrPhCsj+adEB+3JC6liZGBIrIKIbUFcbZG
         EbFi8sHkL82KSlkBOC4S3r80RDE4uK4YHBsXV/RevJkfoWul6tDJJaJbXbRONYZz9vG4
         WD+VzAwlOdVD3IMZ3eIqsERY18MdWrgXAkGiQtpFwNvN+ci2BJIO4k9s2ML7G9eeG9FR
         Xwyq7oHpxG4CJN7gmzRf/kfFN1wqWRuDUP7OVJohyJ3UBC8mq7rwSvFY6vfeJNvhcHbQ
         v2/fjyUWh6LIg3XW6BwmMhuHj4nBsFZWe2G4EGABT2ZZ49JRjEpEtVbntPZLRNAt444h
         L+dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JRsgCJVV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bL6MwiXyBUSJOHiwEn6xD6zGtVE6wkesKGxiYomqCCE=;
        b=hIzIFd6d9KPk+OIiDBBNMuwyDeBF7BNsY14NKcWQIDeMsR8xVt2/3kx+4GCqmWGMZX
         F+qIoxi3stXA7Q1GHrtE10CeyiBm3HMEiuwoy0PbK5o7ngCtmcMJbhqiLdMqwJ/9ZsRo
         HzfnEHlAh4WgzUSkeMkTDRMk5pFnstL/5dt1Jkb5JeCtRALczehKlAhQ87Pr/Mk2iuOt
         /wlXMuZ/L+f2OMrrLMm/1Eq0rtFBdZKllhFyLS3EMQv+36vBT7rAhA/rLw3Fna1WM36f
         gHwTmkg3WK9CoE217sEHu16xHHUWjwH1nF3qS0iULzjECO3BHmBsrmamWgH/zHSkCMCU
         rG5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bL6MwiXyBUSJOHiwEn6xD6zGtVE6wkesKGxiYomqCCE=;
        b=nchol2Rd8xGa6mHGJI9goTTkczGL6c4hQHroiWnZ5d2vPrYCLYWQRryeiqREYIlhY7
         1X/9tlpMmdynUOiXnDLu8p36UKrr2XWZkeRv1H9IZnAjp+YPeT+7v91vqWAIBNf1d+6S
         Dh6WOmWsFBhHST5mkmMtmHZphhvRIQJ4f7IS9rkecdBTKUReAESk0CMj8wQm/41NOJP5
         33Cc1s1SXNEjo0UzlxZe7gDT7gjp2Y+tBaZdYrG+WY2PPhCukCSW4PAWpuxerU1GRp+3
         KQG0J4/LrFNlz7EDR5yR1vrEaeD7jjivbPmQlayImPF8PoVu1xT/3RKxdr+Aqr0ETQKX
         kShg==
X-Gm-Message-State: AOAM533dbl/Ry7FwdO0g0xc1nE5gru3VzXHCqkvNT/2y89cirX7JZ4oZ
	C1WMcPs0cc8KRmMayV0T0WU=
X-Google-Smtp-Source: ABdhPJzi2MhsF4yG+AsPwtejdetI8NNrJ2dzZOlAGqvvn2NiW4bsw6e129sIx9rtBJSPAOyGBUJ/jw==
X-Received: by 2002:a0c:df94:: with SMTP id w20mr11174891qvl.33.1607634942767;
        Thu, 10 Dec 2020 13:15:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:34b:: with SMTP id t11ls3113633qkm.4.gmail; Thu, 10
 Dec 2020 13:15:42 -0800 (PST)
X-Received: by 2002:a37:71c7:: with SMTP id m190mr5846102qkc.95.1607634942286;
        Thu, 10 Dec 2020 13:15:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607634942; cv=none;
        d=google.com; s=arc-20160816;
        b=Ds5unES2OG8nmCRbQzSzNmHlel5yeCo5XIdvdgQZiHI9Sq4MVBvI7ipQY0pC0R1Bnb
         GI1YyvHm9mgfFQoltPz1uMtCMjC2blaJt8WfWFmPDxnt6zdPDyrlI8IOlVN/zp32eJxC
         RHE8j4JbXJ2Fzkssp/7+Kn5XrfEspXEvU98hRdlIkuI8dyYE7pz86BqnXV/CzA72OQOs
         hzX5ZwqcTuHHi3hNhDx1CHc/c6zs302uO8DmSmABOTruoTZPUcJiYWyDR+h1geGVCMmg
         Cl4gJBri8DSyo7QRLkpG6jlVvoJCJyJ+0TJUPAWGi7dQNNjScntL2r09LbAaqbhpFUYY
         saoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c/Z+W5gJnx4o8Cy+7lP4E9JoVV/hTursPoZHURQt0Ms=;
        b=TSDmms9hqguNu7VIhsaPBho4bl/m/zI5aGzCd/C/apxKJ/38OSHVOryDtmiesFzlHg
         SYcW990lWAVb+GbGtYde6KJrw0V+3tiKzi+y7X9yjlrm7kgRWFAJS8MknoxqmdVaLdP1
         W50rG8OzFYo4CLEvwXfysHcrmULvaLqUoczNL4sPHp5uni5yWXzk0N0ThGCka6fBsSrZ
         Mk+Q47ARV6x6PP5vVJB5HOxOYxnT/of4LZ14rqNyjXLu8l5F8mI4h4ZEILnLcgllhXtV
         FPBh4t1BenI4uyx5t1eKfEL//DNqs1fVYLvS2ilW58MG2kwhomEKykUVl3dgnOA0ma5o
         7yfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JRsgCJVV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id n21si415437qkh.0.2020.12.10.13.15.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 13:15:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id t7so5324851pfh.7
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 13:15:42 -0800 (PST)
X-Received: by 2002:a63:3247:: with SMTP id y68mr8430697pgy.10.1607634941169;
 Thu, 10 Dec 2020 13:15:41 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdkK1LgLC4ChptzUTC45WvE9-Sn0OqtgF7-odNSw8xLTYA@mail.gmail.com>
 <a3b89f95-2635-ff9d-4248-4e5e3065ff85@kernel.org> <e9695da9-8b83-39a5-8781-47ae4c7d2e51@kernel.org>
In-Reply-To: <e9695da9-8b83-39a5-8781-47ae4c7d2e51@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 13:15:29 -0800
Message-ID: <CAKwvOdnUe3_fVCoxx2=bF=E8vsuOJMoZHzCfB0ES1dPU7q_PDw@mail.gmail.com>
Subject: Re: 5.4 and 4.19 fix for LLVM_IAS/clang-12
To: Jiri Slaby <jirislaby@kernel.org>, Greg KH <gregkh@linuxfoundation.org>
Cc: Sasha Levin <sashal@kernel.org>, stable <stable@vger.kernel.org>, 
	Jian Cai <jiancai@google.com>, Fangrui Song <maskray@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Borislav Petkov <bp@suse.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/mixed; boundary="0000000000009afbda05b622ad27"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JRsgCJVV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431
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

--0000000000009afbda05b622ad27
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 8, 2020 at 11:21 PM Jiri Slaby <jirislaby@kernel.org> wrote:
>
> On 09. 12. 20, 8:20, Jiri Slaby wrote:
> > On 09. 12. 20, 1:12, Nick Desaulniers wrote:
> >> Dear stable kernel maintainers,
> >> Please consider accepting the following backport to 5.4 and 4.19 of
> >> commit 4d6ffa27b8e5 ("x86/lib: Change .weak to SYM_FUNC_START_WEAK for
> >> arch/x86/lib/mem*_64.S"), attached.

Also, first landed in v5.10-rc3. Exists in v5.9.7 as
305da744c138487864a46b2fb0bd7cf54e1e03b4.

> >>
> >> The patch to 5.4 had a conflict due to 5.4 missing upstream commit
> >> e9b9d020c487 ("x86/asm: Annotate aliases") which first landed in
> >> v5.5-rc1.
> >>
> >> The patch to 4.19 had a conflict due to 4.19 missing the above commit
> >> and ffedeeb780dc ("linkage: Introduce new macros for assembler
> >> symbols") which also first landed in v5.5-rc1 but was backported to
> >> linux-5.4.y as commit 840d8c9b3e5f ("linkage: Introduce new macros for
> >> assembler symbols") which shipped in v5.4.76.
> >>
> >> This patch fixes a build error from clang's assembler when building
> >> with Clang-12, which now errors when symbols are redeclared with
> >> different bindings.  We're using clang's assembler in Android and
> >> ChromeOS for 4.19+.
> >>
> >> Jiri, would you mind reviewing the 4.19 patch (or both)?  It simply
> >> open codes what the upstream macros would expand to; this can be and
> >> was observed from running:
> >
> > You don't have to touch (expand) __memcpy, __memmove, and __memset, right?

Sure, attached a v2.  It's actually a little cleaner (smaller
diffstat) that way.

>
> Also, no need for doubled p2align.

eh, maybe, but
1. it's what SYM_FUNC_START expands to precisely; removing it would be
(too) different from what upstream is doing IMO.
2. it's obviously doubled when in v1 I was expanding the __ prefixed
symbols as well; not so obvious in v2.
3. the order of __ prefixed symbols differs between these three; I'd
rather not rely on the order or have to reorder them to get the
initial symbol realigned; specifying the alignment for both seems
safer to me.

So I haven't included that suggestion in v2, but please feel free to
convince me otherwise if you feel strongly.

Thanks for taking the time to review.  I appreciate it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnUe3_fVCoxx2%3DbF%3DE8vsuOJMoZHzCfB0ES1dPU7q_PDw%40mail.gmail.com.

--0000000000009afbda05b622ad27
Content-Type: text/plain; charset="US-ASCII"; name="4d6ffa27b8e5.4.19.v2.patch.txt"
Content-Disposition: attachment; filename="4d6ffa27b8e5.4.19.v2.patch.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_kijbxmod0>
X-Attachment-Id: f_kijbxmod0

RnJvbSA1NzA3YmVhMGZjZWY2MjYzZDNiMjNjNWYwYjYxZTZhMjg5ZDU0YzIyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBGYW5ncnVpIFNvbmcgPG1hc2tyYXlAZ29vZ2xlLmNvbT4KRGF0
ZTogTW9uLCAyIE5vdiAyMDIwIDE3OjIzOjU4IC0wODAwClN1YmplY3Q6IFtQQVRDSF0geDg2L2xp
YjogQ2hhbmdlIC53ZWFrIHRvIFNZTV9GVU5DX1NUQVJUX1dFQUsgZm9yCiBhcmNoL3g4Ni9saWIv
bWVtKl82NC5TCgpjb21taXQgNGQ2ZmZhMjdiOGU1MTE2YzBhYmIzMTg3OTBmZDAxZDRlMTJkNzVl
NiB1cHN0cmVhbS4KCkNvbW1pdAoKICAzOTNmMjAzZjVmZDUgKCJ4ODZfNjQ6IGthc2FuOiBhZGQg
aW50ZXJjZXB0b3JzIGZvciBtZW1zZXQvbWVtbW92ZS9tZW1jcHkgZnVuY3Rpb25zIikKCmFkZGVk
IC53ZWFrIGRpcmVjdGl2ZXMgdG8gYXJjaC94ODYvbGliL21lbSpfNjQuUyBpbnN0ZWFkIG9mIGNo
YW5naW5nIHRoZQpleGlzdGluZyBFTlRSWSBtYWNyb3MgdG8gV0VBSy4gVGhpcyBjYW4gbGVhZCB0
byB0aGUgYXNzZW1ibHkgc25pcHBldAoKICAud2VhayBtZW1jcHkKICAuLi4KICAuZ2xvYmwgbWVt
Y3B5Cgp3aGljaCB3aWxsIHByb2R1Y2UgYSBTVEJfV0VBSyBtZW1jcHkgd2l0aCBHTlUgYXMgYnV0
IFNUQl9HTE9CQUwgbWVtY3B5CndpdGggTExWTSdzIGludGVncmF0ZWQgYXNzZW1ibGVyIGJlZm9y
ZSBMTFZNIDEyLiBMTFZNIDEyIChzaW5jZQpodHRwczovL3Jldmlld3MubGx2bS5vcmcvRDkwMTA4
KSB3aWxsIGVycm9yIG9uIHN1Y2ggYW4gb3ZlcnJpZGRlbiBzeW1ib2wKYmluZGluZy4KCkNvbW1p
dAoKICBlZjFlMDMxNTJjYjAgKCJ4ODYvYXNtOiBNYWtlIHNvbWUgZnVuY3Rpb25zIGxvY2FsIikK
CmNoYW5nZWQgRU5UUlkgaW4gYXJjaC94ODYvbGliL21lbWNweV82NC5TIHRvIFNZTV9GVU5DX1NU
QVJUX0xPQ0FMLCB3aGljaAp3YXMgaW5lZmZlY3RpdmUgZHVlIHRvIHRoZSBwcmVjZWRpbmcgLndl
YWsgZGlyZWN0aXZlLgoKVXNlIHRoZSBhcHByb3ByaWF0ZSBTWU1fRlVOQ19TVEFSVF9XRUFLIGlu
c3RlYWQuCgpGaXhlczogMzkzZjIwM2Y1ZmQ1ICgieDg2XzY0OiBrYXNhbjogYWRkIGludGVyY2Vw
dG9ycyBmb3IgbWVtc2V0L21lbW1vdmUvbWVtY3B5IGZ1bmN0aW9ucyIpCkZpeGVzOiBlZjFlMDMx
NTJjYjAgKCJ4ODYvYXNtOiBNYWtlIHNvbWUgZnVuY3Rpb25zIGxvY2FsIikKUmVwb3J0ZWQtYnk6
IFNhbWkgVG9sdmFuZW4gPHNhbWl0b2x2YW5lbkBnb29nbGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBG
YW5ncnVpIFNvbmcgPG1hc2tyYXlAZ29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogQm9yaXNsYXYg
UGV0a292IDxicEBzdXNlLmRlPgpSZXZpZXdlZC1ieTogTmljayBEZXNhdWxuaWVycyA8bmRlc2F1
bG5pZXJzQGdvb2dsZS5jb20+ClRlc3RlZC1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFu
Y2VsbG9yQGdtYWlsLmNvbT4KVGVzdGVkLWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmll
cnNAZ29vZ2xlLmNvbT4KQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPgpMaW5rOiBodHRwczov
L2xrbWwua2VybmVsLm9yZy9yLzIwMjAxMTAzMDEyMzU4LjE2ODY4Mi0xLW1hc2tyYXlAZ29vZ2xl
LmNvbQpbbmQ6IGJhY2twb3J0IGR1ZSB0byBtaXNzaW5nCiAgY29tbWl0IGU5YjlkMDIwYzQ4NyAo
Ing4Ni9hc206IEFubm90YXRlIGFsaWFzZXMiKQogIGNvbW1pdCBmZmVkZWViNzgwZGMgKCJsaW5r
YWdlOiBJbnRyb2R1Y2UgbmV3IG1hY3JvcyBmb3IgYXNzZW1ibGVyIHN5bWJvbHMiKV0KU2lnbmVk
LW9mZi1ieTogTmljayBEZXNhdWxuaWVycyA8bmRlc2F1bG5pZXJzQGdvb2dsZS5jb20+Ci0tLQog
YXJjaC94ODYvbGliL21lbWNweV82NC5TICB8IDYgKysrLS0tCiBhcmNoL3g4Ni9saWIvbWVtbW92
ZV82NC5TIHwgNCArKy0tCiBhcmNoL3g4Ni9saWIvbWVtc2V0XzY0LlMgIHwgNiArKystLS0KIDMg
ZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2FyY2gveDg2L2xpYi9tZW1jcHlfNjQuUyBiL2FyY2gveDg2L2xpYi9tZW1jcHlfNjQuUwpp
bmRleCA5ZDA1NTcyMzcwZWQuLjg0YjAwNzgyNzJkMSAxMDA2NDQKLS0tIGEvYXJjaC94ODYvbGli
L21lbWNweV82NC5TCisrKyBiL2FyY2gveDg2L2xpYi9tZW1jcHlfNjQuUwpAQCAtMTQsOCArMTQs
NiBAQAogICogdG8gYSBqbXAgdG8gbWVtY3B5X2VybXMgd2hpY2ggZG9lcyB0aGUgUkVQOyBNT1ZT
QiBtZW0gY29weS4KICAqLwogCi0ud2VhayBtZW1jcHkKLQogLyoKICAqIG1lbWNweSAtIENvcHkg
YSBtZW1vcnkgYmxvY2suCiAgKgpAQCAtMjgsNyArMjYsOSBAQAogICogcmF4IG9yaWdpbmFsIGRl
c3RpbmF0aW9uCiAgKi8KIEVOVFJZKF9fbWVtY3B5KQotRU5UUlkobWVtY3B5KQorLndlYWsgbWVt
Y3B5CisucDJhbGlnbiA0LCAweDkwCittZW1jcHk6CiAJQUxURVJOQVRJVkVfMiAiam1wIG1lbWNw
eV9vcmlnIiwgIiIsIFg4Nl9GRUFUVVJFX1JFUF9HT09ELCBcCiAJCSAgICAgICJqbXAgbWVtY3B5
X2VybXMiLCBYODZfRkVBVFVSRV9FUk1TCiAKZGlmZiAtLWdpdCBhL2FyY2gveDg2L2xpYi9tZW1t
b3ZlXzY0LlMgYi9hcmNoL3g4Ni9saWIvbWVtbW92ZV82NC5TCmluZGV4IGJiZWM2OWQ4MjIzYi4u
ZTFjZmM4ODBmNDJkIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9saWIvbWVtbW92ZV82NC5TCisrKyBi
L2FyY2gveDg2L2xpYi9tZW1tb3ZlXzY0LlMKQEAgLTI1LDggKzI1LDggQEAKICAqIHJheDogZGVz
dAogICovCiAud2VhayBtZW1tb3ZlCi0KLUVOVFJZKG1lbW1vdmUpCisucDJhbGlnbiA0LCAweDkw
CittZW1tb3ZlOgogRU5UUlkoX19tZW1tb3ZlKQogCiAJLyogSGFuZGxlIG1vcmUgMzIgYnl0ZXMg
aW4gbG9vcCAqLwpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvbGliL21lbXNldF82NC5TIGIvYXJjaC94
ODYvbGliL21lbXNldF82NC5TCmluZGV4IDliYzg2MWM3MWU3NS4uMDg0MTg5YWNkY2QwIDEwMDY0
NAotLS0gYS9hcmNoL3g4Ni9saWIvbWVtc2V0XzY0LlMKKysrIGIvYXJjaC94ODYvbGliL21lbXNl
dF82NC5TCkBAIC02LDggKzYsNiBAQAogI2luY2x1ZGUgPGFzbS9hbHRlcm5hdGl2ZS1hc20uaD4K
ICNpbmNsdWRlIDxhc20vZXhwb3J0Lmg+CiAKLS53ZWFrIG1lbXNldAotCiAvKgogICogSVNPIEMg
bWVtc2V0IC0gc2V0IGEgbWVtb3J5IGJsb2NrIHRvIGEgYnl0ZSB2YWx1ZS4gVGhpcyBmdW5jdGlv
biB1c2VzIGZhc3QKICAqIHN0cmluZyB0byBnZXQgYmV0dGVyIHBlcmZvcm1hbmNlIHRoYW4gdGhl
IG9yaWdpbmFsIGZ1bmN0aW9uLiBUaGUgY29kZSBpcwpAQCAtMTksNyArMTcsOSBAQAogICoKICAq
IHJheCAgIG9yaWdpbmFsIGRlc3RpbmF0aW9uCiAgKi8KLUVOVFJZKG1lbXNldCkKKy53ZWFrIG1l
bXNldAorLnAyYWxpZ24gNCwgMHg5MAorbWVtc2V0OgogRU5UUlkoX19tZW1zZXQpCiAJLyoKIAkg
KiBTb21lIENQVXMgc3VwcG9ydCBlbmhhbmNlZCBSRVAgTU9WU0IvU1RPU0IgZmVhdHVyZS4gSXQg
aXMgcmVjb21tZW5kZWQKLS0gCjIuMjkuMi41NzYuZ2EzZmM0NDZkODQtZ29vZwoK
--0000000000009afbda05b622ad27
Content-Type: text/plain; charset="US-ASCII"; name="4d6ffa27b8e5.5.4.v2.patch.txt"
Content-Disposition: attachment; filename="4d6ffa27b8e5.5.4.v2.patch.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_kijcb7292>
X-Attachment-Id: f_kijcb7292

RnJvbSA0OTg1ZTVkMDcwMTM1YzU2Y2UwOTFiZDE2MDE5OTZlYzQ3NDE5ZDA3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBGYW5ncnVpIFNvbmcgPG1hc2tyYXlAZ29vZ2xlLmNvbT4KRGF0
ZTogTW9uLCAyIE5vdiAyMDIwIDE3OjIzOjU4IC0wODAwClN1YmplY3Q6IFtQQVRDSF0geDg2L2xp
YjogQ2hhbmdlIC53ZWFrIHRvIFNZTV9GVU5DX1NUQVJUX1dFQUsgZm9yCiBhcmNoL3g4Ni9saWIv
bWVtKl82NC5TCgpjb21taXQgNGQ2ZmZhMjdiOGU1MTE2YzBhYmIzMTg3OTBmZDAxZDRlMTJkNzVl
NiB1cHN0cmVhbS4KCkNvbW1pdAoKICAzOTNmMjAzZjVmZDUgKCJ4ODZfNjQ6IGthc2FuOiBhZGQg
aW50ZXJjZXB0b3JzIGZvciBtZW1zZXQvbWVtbW92ZS9tZW1jcHkgZnVuY3Rpb25zIikKCmFkZGVk
IC53ZWFrIGRpcmVjdGl2ZXMgdG8gYXJjaC94ODYvbGliL21lbSpfNjQuUyBpbnN0ZWFkIG9mIGNo
YW5naW5nIHRoZQpleGlzdGluZyBFTlRSWSBtYWNyb3MgdG8gV0VBSy4gVGhpcyBjYW4gbGVhZCB0
byB0aGUgYXNzZW1ibHkgc25pcHBldAoKICAud2VhayBtZW1jcHkKICAuLi4KICAuZ2xvYmwgbWVt
Y3B5Cgp3aGljaCB3aWxsIHByb2R1Y2UgYSBTVEJfV0VBSyBtZW1jcHkgd2l0aCBHTlUgYXMgYnV0
IFNUQl9HTE9CQUwgbWVtY3B5CndpdGggTExWTSdzIGludGVncmF0ZWQgYXNzZW1ibGVyIGJlZm9y
ZSBMTFZNIDEyLiBMTFZNIDEyIChzaW5jZQpodHRwczovL3Jldmlld3MubGx2bS5vcmcvRDkwMTA4
KSB3aWxsIGVycm9yIG9uIHN1Y2ggYW4gb3ZlcnJpZGRlbiBzeW1ib2wKYmluZGluZy4KCkNvbW1p
dAoKICBlZjFlMDMxNTJjYjAgKCJ4ODYvYXNtOiBNYWtlIHNvbWUgZnVuY3Rpb25zIGxvY2FsIikK
CmNoYW5nZWQgRU5UUlkgaW4gYXJjaC94ODYvbGliL21lbWNweV82NC5TIHRvIFNZTV9GVU5DX1NU
QVJUX0xPQ0FMLCB3aGljaAp3YXMgaW5lZmZlY3RpdmUgZHVlIHRvIHRoZSBwcmVjZWRpbmcgLndl
YWsgZGlyZWN0aXZlLgoKVXNlIHRoZSBhcHByb3ByaWF0ZSBTWU1fRlVOQ19TVEFSVF9XRUFLIGlu
c3RlYWQuCgpGaXhlczogMzkzZjIwM2Y1ZmQ1ICgieDg2XzY0OiBrYXNhbjogYWRkIGludGVyY2Vw
dG9ycyBmb3IgbWVtc2V0L21lbW1vdmUvbWVtY3B5IGZ1bmN0aW9ucyIpCkZpeGVzOiBlZjFlMDMx
NTJjYjAgKCJ4ODYvYXNtOiBNYWtlIHNvbWUgZnVuY3Rpb25zIGxvY2FsIikKUmVwb3J0ZWQtYnk6
IFNhbWkgVG9sdmFuZW4gPHNhbWl0b2x2YW5lbkBnb29nbGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBG
YW5ncnVpIFNvbmcgPG1hc2tyYXlAZ29vZ2xlLmNvbT4KU2lnbmVkLW9mZi1ieTogQm9yaXNsYXYg
UGV0a292IDxicEBzdXNlLmRlPgpSZXZpZXdlZC1ieTogTmljayBEZXNhdWxuaWVycyA8bmRlc2F1
bG5pZXJzQGdvb2dsZS5jb20+ClRlc3RlZC1ieTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFu
Y2VsbG9yQGdtYWlsLmNvbT4KVGVzdGVkLWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmll
cnNAZ29vZ2xlLmNvbT4KQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPgpMaW5rOiBodHRwczov
L2xrbWwua2VybmVsLm9yZy9yLzIwMjAxMTAzMDEyMzU4LjE2ODY4Mi0xLW1hc2tyYXlAZ29vZ2xl
LmNvbQpbbmQ6IGJhY2twb3J0IGR1ZSB0byBtaXNzaW5nIGNvbW1pdCBlOWI5ZDAyMGM0ODcgKCJ4
ODYvYXNtOiBBbm5vdGF0ZSBhbGlhc2VzIildClNpZ25lZC1vZmYtYnk6IE5pY2sgRGVzYXVsbmll
cnMgPG5kZXNhdWxuaWVyc0Bnb29nbGUuY29tPgotLS0KIGFyY2gveDg2L2xpYi9tZW1jcHlfNjQu
UyAgfCA0ICstLS0KIGFyY2gveDg2L2xpYi9tZW1tb3ZlXzY0LlMgfCA0ICstLS0KIGFyY2gveDg2
L2xpYi9tZW1zZXRfNjQuUyAgfCA0ICstLS0KIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gveDg2L2xpYi9tZW1jcHlfNjQu
UyBiL2FyY2gveDg2L2xpYi9tZW1jcHlfNjQuUwppbmRleCA5Mjc0ODY2MGJhNTEuLmRjMmZiODg2
ZGIyYiAxMDA2NDQKLS0tIGEvYXJjaC94ODYvbGliL21lbWNweV82NC5TCisrKyBiL2FyY2gveDg2
L2xpYi9tZW1jcHlfNjQuUwpAQCAtMTUsOCArMTUsNiBAQAogICogdG8gYSBqbXAgdG8gbWVtY3B5
X2VybXMgd2hpY2ggZG9lcyB0aGUgUkVQOyBNT1ZTQiBtZW0gY29weS4KICAqLwogCi0ud2VhayBt
ZW1jcHkKLQogLyoKICAqIG1lbWNweSAtIENvcHkgYSBtZW1vcnkgYmxvY2suCiAgKgpAQCAtMjks
NyArMjcsNyBAQAogICogcmF4IG9yaWdpbmFsIGRlc3RpbmF0aW9uCiAgKi8KIEVOVFJZKF9fbWVt
Y3B5KQotRU5UUlkobWVtY3B5KQorU1lNX0ZVTkNfU1RBUlRfV0VBSyhtZW1jcHkpCiAJQUxURVJO
QVRJVkVfMiAiam1wIG1lbWNweV9vcmlnIiwgIiIsIFg4Nl9GRUFUVVJFX1JFUF9HT09ELCBcCiAJ
CSAgICAgICJqbXAgbWVtY3B5X2VybXMiLCBYODZfRkVBVFVSRV9FUk1TCiAKZGlmZiAtLWdpdCBh
L2FyY2gveDg2L2xpYi9tZW1tb3ZlXzY0LlMgYi9hcmNoL3g4Ni9saWIvbWVtbW92ZV82NC5TCmlu
ZGV4IGJiZWM2OWQ4MjIzYi4uYjI5MjQ0NTQ2N2I2IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9saWIv
bWVtbW92ZV82NC5TCisrKyBiL2FyY2gveDg2L2xpYi9tZW1tb3ZlXzY0LlMKQEAgLTI0LDkgKzI0
LDcgQEAKICAqIE91dHB1dDoKICAqIHJheDogZGVzdAogICovCi0ud2VhayBtZW1tb3ZlCi0KLUVO
VFJZKG1lbW1vdmUpCitTWU1fRlVOQ19TVEFSVF9XRUFLKG1lbW1vdmUpCiBFTlRSWShfX21lbW1v
dmUpCiAKIAkvKiBIYW5kbGUgbW9yZSAzMiBieXRlcyBpbiBsb29wICovCmRpZmYgLS1naXQgYS9h
cmNoL3g4Ni9saWIvbWVtc2V0XzY0LlMgYi9hcmNoL3g4Ni9saWIvbWVtc2V0XzY0LlMKaW5kZXgg
OWJjODYxYzcxZTc1Li5lMzM3NmM3ZDRjOTcgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2xpYi9tZW1z
ZXRfNjQuUworKysgYi9hcmNoL3g4Ni9saWIvbWVtc2V0XzY0LlMKQEAgLTYsOCArNiw2IEBACiAj
aW5jbHVkZSA8YXNtL2FsdGVybmF0aXZlLWFzbS5oPgogI2luY2x1ZGUgPGFzbS9leHBvcnQuaD4K
IAotLndlYWsgbWVtc2V0Ci0KIC8qCiAgKiBJU08gQyBtZW1zZXQgLSBzZXQgYSBtZW1vcnkgYmxv
Y2sgdG8gYSBieXRlIHZhbHVlLiBUaGlzIGZ1bmN0aW9uIHVzZXMgZmFzdAogICogc3RyaW5nIHRv
IGdldCBiZXR0ZXIgcGVyZm9ybWFuY2UgdGhhbiB0aGUgb3JpZ2luYWwgZnVuY3Rpb24uIFRoZSBj
b2RlIGlzCkBAIC0xOSw3ICsxNyw3IEBACiAgKgogICogcmF4ICAgb3JpZ2luYWwgZGVzdGluYXRp
b24KICAqLwotRU5UUlkobWVtc2V0KQorU1lNX0ZVTkNfU1RBUlRfV0VBSyhtZW1zZXQpCiBFTlRS
WShfX21lbXNldCkKIAkvKgogCSAqIFNvbWUgQ1BVcyBzdXBwb3J0IGVuaGFuY2VkIFJFUCBNT1ZT
Qi9TVE9TQiBmZWF0dXJlLiBJdCBpcyByZWNvbW1lbmRlZAotLSAKMi4yOS4yLjU3Ni5nYTNmYzQ0
NmQ4NC1nb29nCgo=
--0000000000009afbda05b622ad27--

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYFMYD7AKGQEJI5QXRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AB12D3769
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 01:12:17 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id t4sf162389oth.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 16:12:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607472737; cv=pass;
        d=google.com; s=arc-20160816;
        b=wE4UGfh8T37+sRLS+FVgsEEQL+LPimajcmvCgYKCJZjTIoOL9d4S+JNQnXKECapP5M
         BJ0MefvQ6RuHeBZ17L1FvP9yxOd+uI89p6akKY0LnfcMAt3enax8eYMBv6+h6EZWtfTB
         bRONqjPJw3/vVv3LS23Xa2CEcZUVJu9CP4y9OofVvR/dpXnnNgLKR503bGfiY/NlXv6e
         EqP1arZqIoXJleiglSu6CNCh8VBMWakNwDW52aHP0ONW4PMTdaNHfAEXI/xOHDFnVYT/
         6C7oTD80Hh20VXAb7tdAUhRoBd4fncjPlotdQRoqwwVNE1y8Wvior14Mtf0RieceG8tO
         9F9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=DIRAWYDEmtuFuDAdVC8uZoyOBnRvt4Ibsml6mJvD4Gs=;
        b=pWkWptss2fSXdEerOU44R/coRD6sgi3ENmxQdUm9B+eY/ux7MX9SNNeyE6TbgnNA4X
         +BvKpOOj/15xJ6J8vcrDjGq/GX2cVgwgEGfrA9kH13kt3tq1dOtldkhyMGUO/8v14JBa
         64roF0gWp1XHPo86X+Iz/wfAv/3aQ/vu7rcI/+d1jMOsCI0JvvLhk+p5KlS33dI70iBA
         p1XgcD8OTI8BqLNZGuhTapBvr1Ub3nmqpYFXOQ0tZd5fIQJ20d93vGj/fcX4Nvs9l3fa
         XefTE78RiNe4vsoLVsJfnrPu513793U5Rv4UkuWp4HmnjbLQm/SX6PnPGYKvqng9AceT
         wscA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pokfDLHV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DIRAWYDEmtuFuDAdVC8uZoyOBnRvt4Ibsml6mJvD4Gs=;
        b=YTx8wE6Pz+/zKLgFvkhnJK3ASH1C11vcn1Y9zbUWrtJXP4S/JAb7tF4ZxrvTBjOXkd
         KQ2Ahisv1gMojplehbq8w+pzsuRi1BOBJsXFZMlCoiVXDrWCXWDUGO5OvFVf5B+Gn33V
         zR7LL6ia6tHGW20cakinMC531bbfybiTQpwbxTlH4SXQzkANXiCrWGNBQk7qUi5d7NR8
         yj8h/B8uZGAT49D24xQi4vyh4h11JXSJeMjEkT4y0vYpisHQukDZxzBK3TUrGT8d3Wl4
         0mP8lSqzQLyrbfge69tkWAtPmZs8VmH6eP5/BlTR9bapmse0+qx79o5wuxwvVXzAEw+c
         J68A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DIRAWYDEmtuFuDAdVC8uZoyOBnRvt4Ibsml6mJvD4Gs=;
        b=GdIQ1heB8epGVz5jfyaEwf/RcaLq5LbxHQ5kFWvHhnDFVAjj2gUF6BAx9KqkY341pF
         BEUFtdL7E5hFrMnUuLOsKnBDnZ7eJfeWG7n6LEh2JlGlOgASMZy1Dgpd1MB+kzoLtGt9
         7qEipoQvPmb2kS6nvzI0ZZucc0T2SW0cvGgnX9Z9hFZ4qi239ZRNp/vgqY30qfJQ6d2h
         No+t7Z+Bf/gRKG6+RKgAyADYIOMckWUL+ri+sc443L0HYO5CEqZsWfzryqhvhb4dMA2P
         bMF5UeyL03hYZTfSuJP5Kz8bWakOTK5Ny95Fxs64CKuM6F+7yx9USrufZWMsVpo7YHZL
         1FFw==
X-Gm-Message-State: AOAM532k/qOdt0k5aJGO/L6dnBFeWZFRbbODcokD0IhnPY/BVvPMGyAn
	3ycA29RMEyLLbdGFNaC6frA=
X-Google-Smtp-Source: ABdhPJxNiq6gsGQlrCUvPSdU6QoEerwHQZrrNUhG7qAZTaOUyvHe/a5kpudi3fHTw8uTd3P0erHgsg==
X-Received: by 2002:aca:5792:: with SMTP id l140mr310988oib.175.1607472736857;
        Tue, 08 Dec 2020 16:12:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:8cb:: with SMTP id 194ls30286oii.3.gmail; Tue, 08 Dec
 2020 16:12:16 -0800 (PST)
X-Received: by 2002:aca:809:: with SMTP id 9mr22206oii.13.1607472736438;
        Tue, 08 Dec 2020 16:12:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607472736; cv=none;
        d=google.com; s=arc-20160816;
        b=H5ElFhdqu94jB8iiU09hCA1p44wtoju+9QeH4v9QQW/Wi9nKnx6esafBgbVDI8Uv4/
         jzkrjGtPqpktccEf5OT/nERPvZhRaTqKNBSYL22/FHTs4F0hVVhQOEd6Baj4mhSIoBAj
         P6v9nxRsnfJcaSAssD7yWiRTg6BMriBPnKkXRwQbr+sBcftaiq80t3RtM4gtBeOfGE76
         LteEnOKhKNZwgCvNmiU90U+yi5C5j5h9bBP82yOIR43gwXZfF+oY1VNEMoEqy7UODZWy
         QrRtKOhcwrCt3JZxgVB/Mm5ahB1I5hyDNhTrB9T/BMSEV80TY6AGmxH6yGeHx/sNEPk6
         ap3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=3nKLFa8UfqviH+D7Xovpvn0xgKFhcHjy+Jh/lNndHZ0=;
        b=bejdsteUpjhxBN5qFSuW2pJKtEDt8d9X27GMH3Zqq+GWBSJXu79eMUpGeViYB8xHAv
         3Ar5+UUiUBYIGXaq8E9PjF66XiRsPjIabN6p5dRSlptyJ5P90JKW5UY8jLwCIbCVngc5
         oeITQ/uKLuGmtT/X1HeBpPvCsVO119lqXYD58a/rxhlQb3CHnIclp6zHctyCgjIU+oDK
         /J0yz/364BJGsR5sMKJt1ABcgRI/8XqCiBscyjJgZmHCmJ48si7k/ugkIvvnswS1aqjm
         CqxmYVMzW3J4JQJpIwojuEios6OcioSqgYW90X3OKP3sNKsOqRsn5gz6snzpfL+Gut8E
         iBEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pokfDLHV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id u2si50955otg.1.2020.12.08.16.12.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 16:12:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id g18so4949pgk.1
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 16:12:16 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr385794pfy.15.1607472735704; Tue, 08 Dec
 2020 16:12:15 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Dec 2020 16:12:02 -0800
Message-ID: <CAKwvOdkK1LgLC4ChptzUTC45WvE9-Sn0OqtgF7-odNSw8xLTYA@mail.gmail.com>
Subject: 5.4 and 4.19 fix for LLVM_IAS/clang-12
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	Jiri Slaby <jslaby@suse.cz>
Cc: stable <stable@vger.kernel.org>, Jian Cai <jiancai@google.com>, 
	Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Borislav Petkov <bp@suse.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/mixed; boundary="00000000000066748c05b5fce9ed"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pokfDLHV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e
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

--00000000000066748c05b5fce9ed
Content-Type: text/plain; charset="UTF-8"

Dear stable kernel maintainers,
Please consider accepting the following backport to 5.4 and 4.19 of
commit 4d6ffa27b8e5 ("x86/lib: Change .weak to SYM_FUNC_START_WEAK for
arch/x86/lib/mem*_64.S"), attached.

The patch to 5.4 had a conflict due to 5.4 missing upstream commit
e9b9d020c487 ("x86/asm: Annotate aliases") which first landed in
v5.5-rc1.

The patch to 4.19 had a conflict due to 4.19 missing the above commit
and ffedeeb780dc ("linkage: Introduce new macros for assembler
symbols") which also first landed in v5.5-rc1 but was backported to
linux-5.4.y as commit 840d8c9b3e5f ("linkage: Introduce new macros for
assembler symbols") which shipped in v5.4.76.

This patch fixes a build error from clang's assembler when building
with Clang-12, which now errors when symbols are redeclared with
different bindings.  We're using clang's assembler in Android and
ChromeOS for 4.19+.

Jiri, would you mind reviewing the 4.19 patch (or both)?  It simply
open codes what the upstream macros would expand to; this can be and
was observed from running:
$ make ... arch/x86/lib/memmove_64.s
(ie. lowercase s, to invoke the C preprocessor on the uppercase .S file)

See also: https://github.com/ClangBuiltLinux/linux/issues/1190.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkK1LgLC4ChptzUTC45WvE9-Sn0OqtgF7-odNSw8xLTYA%40mail.gmail.com.

--00000000000066748c05b5fce9ed
Content-Type: text/plain; charset="US-ASCII"; name="4d6ffa27b8e5.5.4.patch.txt"
Content-Disposition: attachment; filename="4d6ffa27b8e5.5.4.patch.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_kigne6ia0>
X-Attachment-Id: f_kigne6ia0

RnJvbSBmZWNkZGIwYWI0YWI1OGI2OWUyOWNiOTM2YjA1MzM2NTc0Y2IwMjlmIE1vbiBTZXAgMTcg
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
UyAgfCA2ICsrLS0tLQogYXJjaC94ODYvbGliL21lbW1vdmVfNjQuUyB8IDYgKystLS0tCiBhcmNo
L3g4Ni9saWIvbWVtc2V0XzY0LlMgIHwgNiArKy0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9saWIvbWVt
Y3B5XzY0LlMgYi9hcmNoL3g4Ni9saWIvbWVtY3B5XzY0LlMKaW5kZXggOTI3NDg2NjBiYTUxLi4y
OWYxZWVjZmZkZmQgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2xpYi9tZW1jcHlfNjQuUworKysgYi9h
cmNoL3g4Ni9saWIvbWVtY3B5XzY0LlMKQEAgLTE1LDggKzE1LDYgQEAKICAqIHRvIGEgam1wIHRv
IG1lbWNweV9lcm1zIHdoaWNoIGRvZXMgdGhlIFJFUDsgTU9WU0IgbWVtIGNvcHkuCiAgKi8KIAot
LndlYWsgbWVtY3B5Ci0KIC8qCiAgKiBtZW1jcHkgLSBDb3B5IGEgbWVtb3J5IGJsb2NrLgogICoK
QEAgLTI4LDggKzI2LDggQEAKICAqIE91dHB1dDoKICAqIHJheCBvcmlnaW5hbCBkZXN0aW5hdGlv
bgogICovCi1FTlRSWShfX21lbWNweSkKLUVOVFJZKG1lbWNweSkKK1NZTV9GVU5DX1NUQVJUX0FM
SUFTKF9fbWVtY3B5KQorU1lNX0ZVTkNfU1RBUlRfV0VBSyhtZW1jcHkpCiAJQUxURVJOQVRJVkVf
MiAiam1wIG1lbWNweV9vcmlnIiwgIiIsIFg4Nl9GRUFUVVJFX1JFUF9HT09ELCBcCiAJCSAgICAg
ICJqbXAgbWVtY3B5X2VybXMiLCBYODZfRkVBVFVSRV9FUk1TCiAKZGlmZiAtLWdpdCBhL2FyY2gv
eDg2L2xpYi9tZW1tb3ZlXzY0LlMgYi9hcmNoL3g4Ni9saWIvbWVtbW92ZV82NC5TCmluZGV4IGJi
ZWM2OWQ4MjIzYi4uZjhkZWVmYjVhOTk0IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9saWIvbWVtbW92
ZV82NC5TCisrKyBiL2FyY2gveDg2L2xpYi9tZW1tb3ZlXzY0LlMKQEAgLTI0LDEwICsyNCw4IEBA
CiAgKiBPdXRwdXQ6CiAgKiByYXg6IGRlc3QKICAqLwotLndlYWsgbWVtbW92ZQotCi1FTlRSWSht
ZW1tb3ZlKQotRU5UUlkoX19tZW1tb3ZlKQorU1lNX0ZVTkNfU1RBUlRfV0VBSyhtZW1tb3ZlKQor
U1lNX0ZVTkNfU1RBUlQoX19tZW1tb3ZlKQogCiAJLyogSGFuZGxlIG1vcmUgMzIgYnl0ZXMgaW4g
bG9vcCAqLwogCW1vdiAlcmRpLCAlcmF4CmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9saWIvbWVtc2V0
XzY0LlMgYi9hcmNoL3g4Ni9saWIvbWVtc2V0XzY0LlMKaW5kZXggOWJjODYxYzcxZTc1Li42NTgz
N2Y3ZWViMzIgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2xpYi9tZW1zZXRfNjQuUworKysgYi9hcmNo
L3g4Ni9saWIvbWVtc2V0XzY0LlMKQEAgLTYsOCArNiw2IEBACiAjaW5jbHVkZSA8YXNtL2FsdGVy
bmF0aXZlLWFzbS5oPgogI2luY2x1ZGUgPGFzbS9leHBvcnQuaD4KIAotLndlYWsgbWVtc2V0Ci0K
IC8qCiAgKiBJU08gQyBtZW1zZXQgLSBzZXQgYSBtZW1vcnkgYmxvY2sgdG8gYSBieXRlIHZhbHVl
LiBUaGlzIGZ1bmN0aW9uIHVzZXMgZmFzdAogICogc3RyaW5nIHRvIGdldCBiZXR0ZXIgcGVyZm9y
bWFuY2UgdGhhbiB0aGUgb3JpZ2luYWwgZnVuY3Rpb24uIFRoZSBjb2RlIGlzCkBAIC0xOSw4ICsx
Nyw4IEBACiAgKgogICogcmF4ICAgb3JpZ2luYWwgZGVzdGluYXRpb24KICAqLwotRU5UUlkobWVt
c2V0KQotRU5UUlkoX19tZW1zZXQpCitTWU1fRlVOQ19TVEFSVF9XRUFLKG1lbXNldCkKK1NZTV9G
VU5DX1NUQVJUKF9fbWVtc2V0KQogCS8qCiAJICogU29tZSBDUFVzIHN1cHBvcnQgZW5oYW5jZWQg
UkVQIE1PVlNCL1NUT1NCIGZlYXR1cmUuIEl0IGlzIHJlY29tbWVuZGVkCiAJICogdG8gdXNlIGl0
IHdoZW4gcG9zc2libGUuIElmIG5vdCBhdmFpbGFibGUsIHVzZSBmYXN0IHN0cmluZyBpbnN0cnVj
dGlvbnMuCi0tIAoyLjI5LjIuNTc2LmdhM2ZjNDQ2ZDg0LWdvb2cKCg==
--00000000000066748c05b5fce9ed
Content-Type: text/plain; charset="US-ASCII"; name="4d6ffa27b8e5.4.19.patch.txt"
Content-Disposition: attachment; filename="4d6ffa27b8e5.4.19.patch.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_kigne6j31>
X-Attachment-Id: f_kigne6j31

RnJvbSBmMzA2NDdjYjQxZGVlNmEyMTk2MDliM2Y3ZjU1NTJiYTU3NmU0ODA3IE1vbiBTZXAgMTcg
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
YXJjaC94ODYvbGliL21lbWNweV82NC5TICB8IDEwICsrKysrKy0tLS0KIGFyY2gveDg2L2xpYi9t
ZW1tb3ZlXzY0LlMgfCAgOCArKysrKy0tLQogYXJjaC94ODYvbGliL21lbXNldF82NC5TICB8IDEw
ICsrKysrKy0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvbGliL21lbWNweV82NC5TIGIvYXJjaC94ODYv
bGliL21lbWNweV82NC5TCmluZGV4IDlkMDU1NzIzNzBlZC4uNWU5ZmVjOTA1MmFlIDEwMDY0NAot
LS0gYS9hcmNoL3g4Ni9saWIvbWVtY3B5XzY0LlMKKysrIGIvYXJjaC94ODYvbGliL21lbWNweV82
NC5TCkBAIC0xNCw4ICsxNCw2IEBACiAgKiB0byBhIGptcCB0byBtZW1jcHlfZXJtcyB3aGljaCBk
b2VzIHRoZSBSRVA7IE1PVlNCIG1lbSBjb3B5LgogICovCiAKLS53ZWFrIG1lbWNweQotCiAvKgog
ICogbWVtY3B5IC0gQ29weSBhIG1lbW9yeSBibG9jay4KICAqCkBAIC0yNyw4ICsyNSwxMiBAQAog
ICogT3V0cHV0OgogICogcmF4IG9yaWdpbmFsIGRlc3RpbmF0aW9uCiAgKi8KLUVOVFJZKF9fbWVt
Y3B5KQotRU5UUlkobWVtY3B5KQorLmdsb2JsIF9fbWVtY3B5CisucDJhbGlnbiA0LCAweDkwCitf
X21lbWNweToKKy53ZWFrIG1lbWNweQorLnAyYWxpZ24gNCwgMHg5MAorbWVtY3B5OgogCUFMVEVS
TkFUSVZFXzIgImptcCBtZW1jcHlfb3JpZyIsICIiLCBYODZfRkVBVFVSRV9SRVBfR09PRCwgXAog
CQkgICAgICAiam1wIG1lbWNweV9lcm1zIiwgWDg2X0ZFQVRVUkVfRVJNUwogCmRpZmYgLS1naXQg
YS9hcmNoL3g4Ni9saWIvbWVtbW92ZV82NC5TIGIvYXJjaC94ODYvbGliL21lbW1vdmVfNjQuUwpp
bmRleCBiYmVjNjlkODIyM2IuLjAwYzFmNGZlM2MwMiAxMDA2NDQKLS0tIGEvYXJjaC94ODYvbGli
L21lbW1vdmVfNjQuUworKysgYi9hcmNoL3g4Ni9saWIvbWVtbW92ZV82NC5TCkBAIC0yNSw5ICsy
NSwxMSBAQAogICogcmF4OiBkZXN0CiAgKi8KIC53ZWFrIG1lbW1vdmUKLQotRU5UUlkobWVtbW92
ZSkKLUVOVFJZKF9fbWVtbW92ZSkKKy5wMmFsaWduIDQsIDB4OTAKK21lbW1vdmU6CisuZ2xvYmwg
X19tZW1tb3ZlCisucDJhbGlnbiA0LCAweDkwCitfX21lbW1vdmU6CiAKIAkvKiBIYW5kbGUgbW9y
ZSAzMiBieXRlcyBpbiBsb29wICovCiAJbW92ICVyZGksICVyYXgKZGlmZiAtLWdpdCBhL2FyY2gv
eDg2L2xpYi9tZW1zZXRfNjQuUyBiL2FyY2gveDg2L2xpYi9tZW1zZXRfNjQuUwppbmRleCA5YmM4
NjFjNzFlNzUuLjExNjc1MGJiNTU1ZCAxMDA2NDQKLS0tIGEvYXJjaC94ODYvbGliL21lbXNldF82
NC5TCisrKyBiL2FyY2gveDg2L2xpYi9tZW1zZXRfNjQuUwpAQCAtNiw4ICs2LDYgQEAKICNpbmNs
dWRlIDxhc20vYWx0ZXJuYXRpdmUtYXNtLmg+CiAjaW5jbHVkZSA8YXNtL2V4cG9ydC5oPgogCi0u
d2VhayBtZW1zZXQKLQogLyoKICAqIElTTyBDIG1lbXNldCAtIHNldCBhIG1lbW9yeSBibG9jayB0
byBhIGJ5dGUgdmFsdWUuIFRoaXMgZnVuY3Rpb24gdXNlcyBmYXN0CiAgKiBzdHJpbmcgdG8gZ2V0
IGJldHRlciBwZXJmb3JtYW5jZSB0aGFuIHRoZSBvcmlnaW5hbCBmdW5jdGlvbi4gVGhlIGNvZGUg
aXMKQEAgLTE5LDggKzE3LDEyIEBACiAgKgogICogcmF4ICAgb3JpZ2luYWwgZGVzdGluYXRpb24K
ICAqLwotRU5UUlkobWVtc2V0KQotRU5UUlkoX19tZW1zZXQpCisud2VhayBtZW1zZXQKKy5wMmFs
aWduIDQsIDB4OTAKK21lbXNldDoKKy5nbG9ibCBfX21lbXNldAorLnAyYWxpZ24gNCwgMHg5MAor
X19tZW1zZXQ6CiAJLyoKIAkgKiBTb21lIENQVXMgc3VwcG9ydCBlbmhhbmNlZCBSRVAgTU9WU0Iv
U1RPU0IgZmVhdHVyZS4gSXQgaXMgcmVjb21tZW5kZWQKIAkgKiB0byB1c2UgaXQgd2hlbiBwb3Nz
aWJsZS4gSWYgbm90IGF2YWlsYWJsZSwgdXNlIGZhc3Qgc3RyaW5nIGluc3RydWN0aW9ucy4KLS0g
CjIuMjkuMi41NzYuZ2EzZmM0NDZkODQtZ29vZwoK
--00000000000066748c05b5fce9ed--

Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP6E6P7QKGQEK4XKEFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 3767E2F2325
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 00:41:52 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id f2sf814764ils.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 15:41:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610408511; cv=pass;
        d=google.com; s=arc-20160816;
        b=DwYzR+KBxwJfS0n4hPaE9SHJBDxuir5V+US5t1v2wF6heVdP5UC1kqVj+UHzmkcBK1
         jEXpi7SdcofNQhWRSEkv2RKt7z3XndKF9amQQEGG6cUWNvi41sqzEG+iM1B0eBc211C4
         zh7SScLrIIl/35l9GykrcIfp93sywBcRUUMeAJRy1F+M0mq5sW9kynrrvaN8rZQlQaHB
         u08KG+1YSW8jKUaJdMGGKK94jJ4xRqoUX+rU/zq/dAMZ5H04FJ7o7LfrM4YxK0cw3iee
         jNerzNAfCy8mjyqg361nhzFy40ecVJatiuJzseZOhQ8vqicaCxqoRoAZg7SAArJcFwvG
         T12Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=QaKhMdZ1J0GQ8JRJkLoKNuraFfllStc4LtTV8GoXERI=;
        b=LKSapagrao4T8Eo7dkkTmB5g2rCSLTCDNCyZRB1nDHW3L5kj1x8J9eSXiYQvfJuGiE
         nIx7AJxXj2pF18GhKfCohY0EL2Uc+IBI97qf7GygIcc7NqZE616p+g4lKCnkrCnCY/NG
         b8OgvHXKXb2YuBHWo8vLOPx9c2K2A/2uc8G5prQ0g+G23KHEYGfMeH4YAZUt1RNnBpOV
         NIL60bNhGtAM2Wju4aCVMX4Tfez9EVSVQLVqWqjIVaON8JMPw3ddi5d0bp4bnWvNiz0U
         w+E6Y6+o27zRva60HF3jimt3cnZ4HvM0Y/aaeescklhrNiZdcyPgd31nrLWC6MvCFMNF
         RX2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uwVOQGV3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QaKhMdZ1J0GQ8JRJkLoKNuraFfllStc4LtTV8GoXERI=;
        b=TbuxcSu8CCQfYk2Rc+q5fQVMqb4bf4rTEZi9eex/JKJCrqUjLd2Z86tP1DCQmw+miu
         8ny49QrOBEpSxkn/4D9StadbrChoooaGxKV6EQyfXCArdopr37500iftlSetvkeBkdsK
         uslNtXFxxEHSun2Cf+ZbxHOWfraXnuX27ZjGjH3FgvLpWiMhwvsDvTQD7bq25jPjLWb5
         dg3YvN/QISUq7YSUXvJMNMtwHh6V/fk2y1y8WJR30rB4B053btJMerFwomvjeXjE6qlF
         RtPQGHg7R7sxVOtmqQfsGkZSepQ5Qbr5SJqKYJEwHc5GlmZ/oh9y1imXnFRncI2QMAb3
         PZ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QaKhMdZ1J0GQ8JRJkLoKNuraFfllStc4LtTV8GoXERI=;
        b=OdXkarepQnCkXRA0Wb2wWlQj34uUu41CA0v5fcVebEqQd/TjMbDF/CUn99NDuMQrxA
         X+EljXezWvHv9L9f4pXmvbf0//RcR23JhIiNn8fSVdYJQ07rDuK/t55n98NDa0klorR/
         cJ5uJdn2SSNV1DXKWaXGybMHYRr3pikhAeRaEw+9wsyFbk2xPMAdbAXzYbPB/YcqiRmO
         gINExM00K9KQJzzAAE5K677e0Fl5s69KToc2EGZWtnCdPI/aYFX1ocpYIHpoWBcJGYtj
         vwUwWPp1YSHmFh7aMoDR/FN0LvN8j6B3DTcV1Ic+l9NRtQL5CHi6veZLxy+j/c0O6+/M
         TSZg==
X-Gm-Message-State: AOAM5320FoK4HKxijBh0NJQP/7VL7wQ7gxwIlO9aFveFTfXtY0uih8At
	6+bo2DUnr3Wf5ZbMtH0r0Eo=
X-Google-Smtp-Source: ABdhPJwKg/5X2LjAKYERgjMDCtbvu3RBTZdmloHpjE2vSSUYQK7ivRea6x4bcR49ybkYO14ajiDfYw==
X-Received: by 2002:a92:cec4:: with SMTP id z4mr1365104ilq.217.1610408511156;
        Mon, 11 Jan 2021 15:41:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1346:: with SMTP id k6ls54411ilr.2.gmail; Mon, 11
 Jan 2021 15:41:50 -0800 (PST)
X-Received: by 2002:a05:6e02:e01:: with SMTP id a1mr1301018ilk.101.1610408510718;
        Mon, 11 Jan 2021 15:41:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610408510; cv=none;
        d=google.com; s=arc-20160816;
        b=dC8FUV3v5wvzVc5Dn2BKZBM6dohQT4KFvfFf0yoKYVaKo4X7/yllGB/egjX0im/heR
         IgE/IcVlYCe6prZptsVd3OJlUN6Wp7NevQUsXo3vF3il+hnpVUVB24IAN1/yLW+mSyDe
         dRpVbL4Q/N9Cy7KcVwM8MArTlyl8PJDp1TvDQKbVQBFf2icfv/nPB9wlRIJyp7KoKK03
         /s3PImNwFLvStnIw0MYO2+etCamreY7Ij6dD6269xWKyB3MFWqnLAt4PRDXoDnwhh8Dt
         hB8A85OmQPNPUIhpUxZveoXAmsU2vRFNld5FahpDMDIXeTcShtTiSdgwM3R+rgywn9as
         k91w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=VCAlAIlVSmbxSwdUvIEsTPkLI8OSxMFQYGpJ7wTWGKc=;
        b=qg+WFO1VtKXWUSJpeuIgCKrzEAbupWxCxWUhHGeypQ9Cbp8QDAg633VWH7PfxfpAn4
         SXqTMbEGlXOjjiePQ2rlh/DkhpRBCub2Tsz5U0H2phWIbX9y1vjqkOAzqDis8Zix2a1X
         F0ARRPB0nIEYKH+BjwXr5Koksq5DfW3vX8Wjf+27Z0URB/bbeitsbRO1UUWIPOMlIuYq
         0NWWqPgfCjzfmLgwY4Mh9R9iPPlenoo1QR5/pTkXOCwPRIl/J5J7mP9dIMF38AiLogc/
         icCfWUekv/hTo0Q+hdP5LfOMhB8Sjrk6P9w4GzLkE9WJ+oJlGIKFAupvXsBBZOreB1kd
         EIDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uwVOQGV3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id t69si131302ill.3.2021.01.11.15.41.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 15:41:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id v3so349421plz.13
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 15:41:50 -0800 (PST)
X-Received: by 2002:a17:902:ed14:b029:da:9da4:3091 with SMTP id
 b20-20020a170902ed14b02900da9da43091mr1726296pld.29.1610408509164; Mon, 11
 Jan 2021 15:41:49 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 15:41:37 -0800
Message-ID: <CAKwvOd=F_wWLxhnV3J8jx1L3SXPd8NFYyOKzAh7rL0iRb_aNyA@mail.gmail.com>
Subject: 78762b0e79bc for linux-5.4.y
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: "# 3.4.x" <stable@vger.kernel.org>, Jiri Slaby <jirislaby@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@suse.de>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Alistair Delva <adelva@google.com>
Content-Type: multipart/mixed; boundary="0000000000002298dc05b8a87335"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uwVOQGV3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d
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

--0000000000002298dc05b8a87335
Content-Type: text/plain; charset="UTF-8"

Please consider applying the following patch for LLVM_IAS=1 support
for Android's i386 cuttlefish virtual device:
commit 78762b0e79bc ("x86/asm/32: Add ENDs to some functions and
relabel with SYM_CODE_*")
which first landed in v5.5-rc1.

There was a small conflict in arch/x86/xen/xen-asm_32.S due to the
order of backports that was trivial to resolve.  You can see the list
of commits to it in linux-5.7.y:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/log/arch/x86/xen/xen-asm_32.S?h=linux-5.7.y
as arch/x86/xen/xen-asm_32.S was removed in
commit a13f2ef168cb ("x86/xen: remove 32-bit Xen PV guest support") in v5.9-rc1.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DF_wWLxhnV3J8jx1L3SXPd8NFYyOKzAh7rL0iRb_aNyA%40mail.gmail.com.

--0000000000002298dc05b8a87335
Content-Type: application/octet-stream; name="78762b0e79bc.5.4.patch"
Content-Disposition: attachment; filename="78762b0e79bc.5.4.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kjt7d5jg0>
X-Attachment-Id: f_kjt7d5jg0

RnJvbSBhNjRiOWI5MzM2YjZhMzgzODllNDVhMWFiYjQ0MTYwNTY1MWY2NTE4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKaXJpIFNsYWJ5IDxqc2xhYnlAc3VzZS5jej4KRGF0ZTogRnJp
LCAxMSBPY3QgMjAxOSAxMzo1MTowNSArMDIwMApTdWJqZWN0OiBbUEFUQ0hdIHg4Ni9hc20vMzI6
IEFkZCBFTkRzIHRvIHNvbWUgZnVuY3Rpb25zIGFuZCByZWxhYmVsIHdpdGgKIFNZTV9DT0RFXyoK
CmNvbW1pdCA3ODc2MmIwZTc5YmMxZGQwMTM0N2JlMDYxYWJkZjUwNTIwMjE1MmM5IHVwc3RyZWFt
LgoKQWxsIHRoZXNlIGFyZSBmdW5jdGlvbnMgd2hpY2ggYXJlIGludm9rZWQgZnJvbSBlbHNld2hl
cmUgYnV0IHRoZXkgYXJlCm5vdCB0eXBpY2FsIEMgZnVuY3Rpb25zLiBTbyBhbm5vdGF0ZSB0aGVt
IHVzaW5nIHRoZSBuZXcgU1lNX0NPREVfU1RBUlQuCkFsbCB0aGVzZSB3ZXJlIG5vdCBiYWxhbmNl
ZCB3aXRoIGFueSBFTkQsIHNvIG1hcmsgdGhlaXIgZW5kcyBieQpTWU1fQ09ERV9FTkQsIGFwcHJv
cHJpYXRlbHkuCgpTaWduZWQtb2ZmLWJ5OiBKaXJpIFNsYWJ5IDxqc2xhYnlAc3VzZS5jej4KU2ln
bmVkLW9mZi1ieTogQm9yaXNsYXYgUGV0a292IDxicEBzdXNlLmRlPgpSZXZpZXdlZC1ieTogQm9y
aXMgT3N0cm92c2t5IDxib3Jpcy5vc3Ryb3Zza3lAb3JhY2xlLmNvbT4gW3hlbiBiaXRzXQpSZXZp
ZXdlZC1ieTogUmFmYWVsIEouIFd5c29ja2kgPHJhZmFlbC5qLnd5c29ja2lAaW50ZWwuY29tPiBb
aGliZXJuYXRlXQpDYzogQW5keSBMdXRvbWlyc2tpIDxsdXRvQGtlcm5lbC5vcmc+CkNjOiAiSC4g
UGV0ZXIgQW52aW4iIDxocGFAenl0b3IuY29tPgpDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhh
dC5jb20+CkNjOiBKb3NoIFBvaW1ib2V1ZiA8anBvaW1ib2VAcmVkaGF0LmNvbT4KQ2M6IEp1ZXJn
ZW4gR3Jvc3MgPGpncm9zc0BzdXNlLmNvbT4KQ2M6IExlbiBCcm93biA8bGVuLmJyb3duQGludGVs
LmNvbT4KQ2M6IGxpbnV4LWFyY2hAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1wbUB2Z2VyLmtl
cm5lbC5vcmcKQ2M6IFBhdmVsIE1hY2hlayA8cGF2ZWxAdWN3LmN6PgpDYzogUGV0ZXIgWmlqbHN0
cmEgPHBldGVyekBpbmZyYWRlYWQub3JnPgpDYzogUGluZ2ZhbiBMaXUgPGtlcm5lbGZhbnNAZ21h
aWwuY29tPgpDYzogU3RlZmFubyBTdGFiZWxsaW5pIDxzc3RhYmVsbGluaUBrZXJuZWwub3JnPgpD
YzogIlN0ZXZlbiBSb3N0ZWR0IChWTXdhcmUpIiA8cm9zdGVkdEBnb29kbWlzLm9yZz4KQ2M6IFRo
b21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogeDg2LW1sIDx4ODZAa2VybmVs
Lm9yZz4KQ2M6IHhlbi1kZXZlbEBsaXN0cy54ZW5wcm9qZWN0Lm9yZwpMaW5rOiBodHRwczovL2xr
bWwua2VybmVsLm9yZy9yLzIwMTkxMDExMTE1MTA4LjEyMzkyLTI2LWpzbGFieUBzdXNlLmN6Cltu
ZDogYWRqdXN0ZWQgZHVlIHRvIGNvbmZsaWN0IGluIHhlbl9pcmV0X2NyaXRfZml4dXAgZHVlIHRv
IGJhY2twb3J0IG9mCiAgY29tbWl0IDkyMmVlYTJjZTVjNyAoIng4Ni94ZW4vMzI6IFNpbXBsaWZ5
IHJpbmcgY2hlY2sgaW4geGVuX2lyZXRfY3JpdF9maXh1cCgpIildClNpZ25lZC1vZmYtYnk6IE5p
Y2sgRGVzYXVsbmllcnMgPG5kZXNhdWxuaWVyc0Bnb29nbGUuY29tPgotLS0KIGFyY2gveDg2L2Vu
dHJ5L2VudHJ5XzMyLlMgICAgICAgICAgICB8IDMgKystCiBhcmNoL3g4Ni9rZXJuZWwvYWNwaS93
YWtldXBfMzIuUyAgICAgfCA3ICsrKystLS0KIGFyY2gveDg2L2tlcm5lbC9mdHJhY2VfMzIuUyAg
ICAgICAgICB8IDMgKystCiBhcmNoL3g4Ni9rZXJuZWwvaGVhZF8zMi5TICAgICAgICAgICAgfCAz
ICsrLQogYXJjaC94ODYvcG93ZXIvaGliZXJuYXRlX2FzbV8zMi5TICAgIHwgNiArKysrLS0KIGFy
Y2gveDg2L3JlYWxtb2RlL3JtL3RyYW1wb2xpbmVfMzIuUyB8IDYgKysrKy0tCiBhcmNoL3g4Ni94
ZW4veGVuLWFzbV8zMi5TICAgICAgICAgICAgfCA3ICsrKystLS0KIDcgZmlsZXMgY2hhbmdlZCwg
MjIgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC94ODYv
ZW50cnkvZW50cnlfMzIuUyBiL2FyY2gveDg2L2VudHJ5L2VudHJ5XzMyLlMKaW5kZXggMzkwZWRi
NzYzODI2Li5iZGUzZTBmODU0MjUgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2VudHJ5L2VudHJ5XzMy
LlMKKysrIGIvYXJjaC94ODYvZW50cnkvZW50cnlfMzIuUwpAQCAtODY5LDkgKzg2OSwxMCBAQCBH
TE9CQUwoX19iZWdpbl9TWVNFTlRFUl9zaW5nbGVzdGVwX3JlZ2lvbikKICAqIFhlbiBkb2Vzbid0
IHNldCAlZXNwIHRvIGJlIHByZWNpc2VseSB3aGF0IHRoZSBub3JtYWwgU1lTRU5URVIKICAqIGVu
dHJ5IHBvaW50IGV4cGVjdHMsIHNvIGZpeCBpdCB1cCBiZWZvcmUgdXNpbmcgdGhlIG5vcm1hbCBw
YXRoLgogICovCi1FTlRSWSh4ZW5fc3lzZW50ZXJfdGFyZ2V0KQorU1lNX0NPREVfU1RBUlQoeGVu
X3N5c2VudGVyX3RhcmdldCkKIAlhZGRsCSQ1KjQsICVlc3AJCQkvKiByZW1vdmUgeGVuLXByb3Zp
ZGVkIGZyYW1lICovCiAJam1wCS5Mc3lzZW50ZXJfcGFzdF9lc3AKK1NZTV9DT0RFX0VORCh4ZW5f
c3lzZW50ZXJfdGFyZ2V0KQogI2VuZGlmCiAKIC8qCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rZXJu
ZWwvYWNwaS93YWtldXBfMzIuUyBiL2FyY2gveDg2L2tlcm5lbC9hY3BpL3dha2V1cF8zMi5TCmlu
ZGV4IGU5NWU5NTk2MDE1Ni4uNWIwNzZjYjc5ZjVmIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9rZXJu
ZWwvYWNwaS93YWtldXBfMzIuUworKysgYi9hcmNoL3g4Ni9rZXJuZWwvYWNwaS93YWtldXBfMzIu
UwpAQCAtOSw4ICs5LDcgQEAKIAkuY29kZTMyCiAJQUxJR04KIAotRU5UUlkod2FrZXVwX3Btb2Rl
X3JldHVybikKLXdha2V1cF9wbW9kZV9yZXR1cm46CitTWU1fQ09ERV9TVEFSVCh3YWtldXBfcG1v
ZGVfcmV0dXJuKQogCW1vdncJJF9fS0VSTkVMX0RTLCAlYXgKIAltb3Z3CSVheCwgJXNzCiAJbW92
dwklYXgsICVmcwpAQCAtMzksNiArMzgsNyBAQCB3YWtldXBfcG1vZGVfcmV0dXJuOgogCSMganVt
cCB0byBwbGFjZSB3aGVyZSB3ZSBsZWZ0IG9mZgogCW1vdmwJc2F2ZWRfZWlwLCAlZWF4CiAJam1w
CSolZWF4CitTWU1fQ09ERV9FTkQod2FrZXVwX3Btb2RlX3JldHVybikKIAogYm9ndXNfbWFnaWM6
CiAJam1wCWJvZ3VzX21hZ2ljCkBAIC03Miw3ICs3Miw3IEBAIHJlc3RvcmVfcmVnaXN0ZXJzOgog
CXBvcGZsCiAJcmV0CiAKLUVOVFJZKGRvX3N1c3BlbmRfbG93bGV2ZWwpCitTWU1fQ09ERV9TVEFS
VChkb19zdXNwZW5kX2xvd2xldmVsKQogCWNhbGwJc2F2ZV9wcm9jZXNzb3Jfc3RhdGUKIAljYWxs
CXNhdmVfcmVnaXN0ZXJzCiAJcHVzaGwJJDMKQEAgLTg3LDYgKzg3LDcgQEAgcmV0X3BvaW50Ogog
CWNhbGwJcmVzdG9yZV9yZWdpc3RlcnMKIAljYWxsCXJlc3RvcmVfcHJvY2Vzc29yX3N0YXRlCiAJ
cmV0CitTWU1fQ09ERV9FTkQoZG9fc3VzcGVuZF9sb3dsZXZlbCkKIAogLmRhdGEKIEFMSUdOCmRp
ZmYgLS1naXQgYS9hcmNoL3g4Ni9rZXJuZWwvZnRyYWNlXzMyLlMgYi9hcmNoL3g4Ni9rZXJuZWwv
ZnRyYWNlXzMyLlMKaW5kZXggMDczYWFiNTI1ZDgwLi4yY2MwMzAzNTIyYzkgMTAwNjQ0Ci0tLSBh
L2FyY2gveDg2L2tlcm5lbC9mdHJhY2VfMzIuUworKysgYi9hcmNoL3g4Ni9rZXJuZWwvZnRyYWNl
XzMyLlMKQEAgLTg5LDcgKzg5LDcgQEAgV0VBSyhmdHJhY2Vfc3R1YikKIAlyZXQKIEVORChmdHJh
Y2VfY2FsbGVyKQogCi1FTlRSWShmdHJhY2VfcmVnc19jYWxsZXIpCitTWU1fQ09ERV9TVEFSVChm
dHJhY2VfcmVnc19jYWxsZXIpCiAJLyoKIAkgKiBXZSdyZSBoZXJlIGZyb20gYW4gbWNvdW50L2Zl
bnRyeSBDQUxMLCBhbmQgdGhlIHN0YWNrIGZyYW1lIGxvb2tzIGxpa2U6CiAJICoKQEAgLTE2Myw2
ICsxNjMsNyBAQCBHTE9CQUwoZnRyYWNlX3JlZ3NfY2FsbCkKIAlwb3BsCSVlYXgKIAogCWptcAku
TGZ0cmFjZV9yZXQKK1NZTV9DT0RFX0VORChmdHJhY2VfcmVnc19jYWxsZXIpCiAKICNpZmRlZiBD
T05GSUdfRlVOQ1RJT05fR1JBUEhfVFJBQ0VSCiBFTlRSWShmdHJhY2VfZ3JhcGhfY2FsbGVyKQpk
aWZmIC0tZ2l0IGEvYXJjaC94ODYva2VybmVsL2hlYWRfMzIuUyBiL2FyY2gveDg2L2tlcm5lbC9o
ZWFkXzMyLlMKaW5kZXggMmU2YTA2NzZjMWY0Li4xMWE1ZDVhZGU1MmMgMTAwNjQ0Ci0tLSBhL2Fy
Y2gveDg2L2tlcm5lbC9oZWFkXzMyLlMKKysrIGIvYXJjaC94ODYva2VybmVsL2hlYWRfMzIuUwpA
QCAtNjQsNyArNjQsNyBAQCBSRVNFUlZFX0JSSyhwYWdldGFibGVzLCBJTklUX01BUF9TSVpFKQog
ICogY2FuLgogICovCiBfX0hFQUQKLUVOVFJZKHN0YXJ0dXBfMzIpCitTWU1fQ09ERV9TVEFSVChz
dGFydHVwXzMyKQogCW1vdmwgcGEoaW5pdGlhbF9zdGFjayksJWVjeAogCQogCS8qIHRlc3QgS0VF
UF9TRUdNRU5UUyBmbGFnIHRvIHNlZSBpZiB0aGUgYm9vdGxvYWRlciBpcyBhc2tpbmcKQEAgLTE3
Miw2ICsxNzIsNyBAQCBudW1fc3ViYXJjaF9lbnRyaWVzID0gKC4gLSBzdWJhcmNoX2VudHJpZXMp
IC8gNAogI2Vsc2UKIAlqbXAgLkxkZWZhdWx0X2VudHJ5CiAjZW5kaWYgLyogQ09ORklHX1BBUkFW
SVJUICovCitTWU1fQ09ERV9FTkQoc3RhcnR1cF8zMikKIAogI2lmZGVmIENPTkZJR19IT1RQTFVH
X0NQVQogLyoKZGlmZiAtLWdpdCBhL2FyY2gveDg2L3Bvd2VyL2hpYmVybmF0ZV9hc21fMzIuUyBi
L2FyY2gveDg2L3Bvd2VyL2hpYmVybmF0ZV9hc21fMzIuUwppbmRleCA2ZmUzODMwMDIxMjUuLmEx
OWVkM2QyMzE4NSAxMDA2NDQKLS0tIGEvYXJjaC94ODYvcG93ZXIvaGliZXJuYXRlX2FzbV8zMi5T
CisrKyBiL2FyY2gveDg2L3Bvd2VyL2hpYmVybmF0ZV9hc21fMzIuUwpAQCAtMzUsNyArMzUsNyBA
QCBFTlRSWShzd3N1c3BfYXJjaF9zdXNwZW5kKQogCXJldAogRU5EUFJPQyhzd3N1c3BfYXJjaF9z
dXNwZW5kKQogCi1FTlRSWShyZXN0b3JlX2ltYWdlKQorU1lNX0NPREVfU1RBUlQocmVzdG9yZV9p
bWFnZSkKIAkvKiBwcmVwYXJlIHRvIGp1bXAgdG8gdGhlIGltYWdlIGtlcm5lbCAqLwogCW1vdmwJ
cmVzdG9yZV9qdW1wX2FkZHJlc3MsICVlYngKIAltb3ZsCXJlc3RvcmVfY3IzLCAlZWJwCkBAIC00
NSw5ICs0NSwxMCBAQCBFTlRSWShyZXN0b3JlX2ltYWdlKQogCS8qIGp1bXAgdG8gcmVsb2NhdGVk
IHJlc3RvcmUgY29kZSAqLwogCW1vdmwJcmVsb2NhdGVkX3Jlc3RvcmVfY29kZSwgJWVheAogCWpt
cGwJKiVlYXgKK1NZTV9DT0RFX0VORChyZXN0b3JlX2ltYWdlKQogCiAvKiBjb2RlIGJlbG93IGhh
cyBiZWVuIHJlbG9jYXRlZCB0byBhIHNhZmUgcGFnZSAqLwotRU5UUlkoY29yZV9yZXN0b3JlX2Nv
ZGUpCitTWU1fQ09ERV9TVEFSVChjb3JlX3Jlc3RvcmVfY29kZSkKIAltb3ZsCXRlbXBfcGd0LCAl
ZWF4CiAJbW92bAklZWF4LCAlY3IzCiAKQEAgLTc3LDYgKzc4LDcgQEAgY29weV9sb29wOgogCiBk
b25lOgogCWptcGwJKiVlYngKK1NZTV9DT0RFX0VORChjb3JlX3Jlc3RvcmVfY29kZSkKIAogCS8q
IGNvZGUgYmVsb3cgYmVsb25ncyB0byB0aGUgaW1hZ2Uga2VybmVsICovCiAJLmFsaWduIFBBR0Vf
U0laRQpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvcmVhbG1vZGUvcm0vdHJhbXBvbGluZV8zMi5TIGIv
YXJjaC94ODYvcmVhbG1vZGUvcm0vdHJhbXBvbGluZV8zMi5TCmluZGV4IDE4NjhiMTU4NDgwZC4u
M2EwZWYwZDU3NzM0IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9yZWFsbW9kZS9ybS90cmFtcG9saW5l
XzMyLlMKKysrIGIvYXJjaC94ODYvcmVhbG1vZGUvcm0vdHJhbXBvbGluZV8zMi5TCkBAIC0yOSw3
ICsyOSw3IEBACiAJLmNvZGUxNgogCiAJLmJhbGlnbglQQUdFX1NJWkUKLUVOVFJZKHRyYW1wb2xp
bmVfc3RhcnQpCitTWU1fQ09ERV9TVEFSVCh0cmFtcG9saW5lX3N0YXJ0KQogCXdiaW52ZAkJCSMg
TmVlZGVkIGZvciBOVU1BLVEgc2hvdWxkIGJlIGhhcm1sZXNzIGZvciBvdGhlcnMKIAogCUxKTVBX
X1JNKDFmKQpAQCAtNTQsMTEgKzU0LDEzIEBAIEVOVFJZKHRyYW1wb2xpbmVfc3RhcnQpCiAJbG1z
dwklZHgJCQkjIGludG8gcHJvdGVjdGVkIG1vZGUKIAogCWxqbXBsCSRfX0JPT1RfQ1MsICRwYV9z
dGFydHVwXzMyCitTWU1fQ09ERV9FTkQodHJhbXBvbGluZV9zdGFydCkKIAogCS5zZWN0aW9uICIu
dGV4dDMyIiwiYXgiCiAJLmNvZGUzMgotRU5UUlkoc3RhcnR1cF8zMikJCQkjIG5vdGU6IGFsc28g
dXNlZCBmcm9tIHdha2V1cF9hc20uUworU1lNX0NPREVfU1RBUlQoc3RhcnR1cF8zMikJCQkjIG5v
dGU6IGFsc28gdXNlZCBmcm9tIHdha2V1cF9hc20uUwogCWptcAkqJWVheAorU1lNX0NPREVfRU5E
KHN0YXJ0dXBfMzIpCiAKIAkuYnNzCiAJLmJhbGlnbiA4CmRpZmYgLS1naXQgYS9hcmNoL3g4Ni94
ZW4veGVuLWFzbV8zMi5TIGIvYXJjaC94ODYveGVuL3hlbi1hc21fMzIuUwppbmRleCBjZDE3Nzc3
MmZlNGQuLjI3MTJlOTE1NTMwNiAxMDA2NDQKLS0tIGEvYXJjaC94ODYveGVuL3hlbi1hc21fMzIu
UworKysgYi9hcmNoL3g4Ni94ZW4veGVuLWFzbV8zMi5TCkBAIC01Niw3ICs1Niw3IEBACiAJX0FT
TV9FWFRBQkxFKDFiLDJiKQogLmVuZG0KIAotRU5UUlkoeGVuX2lyZXQpCitTWU1fQ09ERV9TVEFS
VCh4ZW5faXJldCkKIAkvKiB0ZXN0IGVmbGFncyBmb3Igc3BlY2lhbCBjYXNlcyAqLwogCXRlc3Rs
ICQoWDg2X0VGTEFHU19WTSB8IFhFTl9FRkxBR1NfTk1JKSwgOCglZXNwKQogCWpueiBoeXBlcl9p
cmV0CkBAIC0xMjIsNiArMTIyLDcgQEAgeGVuX2lyZXRfZW5kX2NyaXQ6CiBoeXBlcl9pcmV0Ogog
CS8qIHB1dCB0aGlzIG91dCBvZiBsaW5lIHNpbmNlIGl0cyB2ZXJ5IHJhcmVseSB1c2VkICovCiAJ
am1wIGh5cGVyY2FsbF9wYWdlICsgX19IWVBFUlZJU09SX2lyZXQgKiAzMgorU1lNX0NPREVfRU5E
KHhlbl9pcmV0KQogCiAJLmdsb2JsIHhlbl9pcmV0X3N0YXJ0X2NyaXQsIHhlbl9pcmV0X2VuZF9j
cml0CiAKQEAgLTE1Miw3ICsxNTMsNyBAQCBoeXBlcl9pcmV0OgogICogVGhlIG9ubHkgY2F2ZWF0
IGlzIHRoYXQgaWYgdGhlIG91dGVyIGVheCBoYXNuJ3QgYmVlbiByZXN0b3JlZCB5ZXQgKGkuZS4K
ICAqIGl0J3Mgc3RpbGwgb24gc3RhY2spLCB3ZSBuZWVkIHRvIHJlc3RvcmUgaXRzIHZhbHVlIGhl
cmUuCiAgKi8KLUVOVFJZKHhlbl9pcmV0X2NyaXRfZml4dXApCitTWU1fQ09ERV9TVEFSVCh4ZW5f
aXJldF9jcml0X2ZpeHVwKQogCS8qCiAJICogUGFyYW5vaWE6IE1ha2Ugc3VyZSB3ZSdyZSByZWFs
bHkgY29taW5nIGZyb20ga2VybmVsIHNwYWNlLgogCSAqIE9uZSBjb3VsZCBpbWFnaW5lIGEgY2Fz
ZSB3aGVyZSB1c2Vyc3BhY2UganVtcHMgaW50byB0aGUKQEAgLTE3OSw0ICsxODAsNCBAQCBFTlRS
WSh4ZW5faXJldF9jcml0X2ZpeHVwKQogCiAyOgogCXJldAotRU5EKHhlbl9pcmV0X2NyaXRfZml4
dXApCitTWU1fQ09ERV9FTkQoeGVuX2lyZXRfY3JpdF9maXh1cCkKLS0gCjIuMzAuMC4yODQuZ2Q5
OGIxZGQ1ZWFhNy1nb29nCgo=
--0000000000002298dc05b8a87335--

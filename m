Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIMM2SBAMGQEZPD2DMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 281FC3426B5
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 21:14:26 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id o21sf13611070lfg.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 13:14:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616184865; cv=pass;
        d=google.com; s=arc-20160816;
        b=dPsPm9JxlDgJBINbfgF3eVWROJ8qoiyZEWc8FgFQRDn2xYRT7IxpnxYl3SPlizdSIg
         gsz5bhscMh1LJaqXK0uc6S3lS6cYDS3ABGVPgT4QrQUXafcN4JT2QEHOPfTjG13HC/sB
         x9akJBflI794Vu/ejEjrc3yGVeyWrMSIk2ejH7eSVAvcrgEtl7PqBbtIrE4+CfKtRWTR
         FKaewxZ/fUK2VywFZaeKdM1uTrftJcuPJGZlRJfJk66DKOzEhEDjraItuN6Pu4EvLDCy
         jHr9NdEEqJdjInR5zAa7E2hQ1V2qb5wCHUKyl2Aeq82aZogq/fcd0dyA/BWyeLnvzebd
         ms7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sOHXpUAMTQSCIqrCFLpSj9apPXZ94PIhljXzw4ivKLY=;
        b=kp4vDe4Pm8qhxU71U+eMfCtWeQwqeJjKpWVMsdPjYkn4na8VJJF5u+moZ+/8yF2oJc
         VLMSnT+PY7L4Ge9iSLLFpw4SrPAuSYKdzfCqpzkqvRto9nmASJ2Y7/jMMvWLlhCDRdgs
         MNEk2XA8gfZP99qyh+wkny/rxo8cBMAmHxXptlPylhu8NLaDf0QcTh2gfL1r36AR/eko
         l9HoZu2j+NEQyz7JyMhni0Gbb8OCn5D2icxannLOm8bU880sUIO4o2QL5N3ggyXVAQBH
         D+fQin5jn7u9nluXIiokbx+lTIVyP3Z9ApUqB6bh/1g1vCXDAFg946doU29oHwYWKrak
         2d/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bLwwMsWK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sOHXpUAMTQSCIqrCFLpSj9apPXZ94PIhljXzw4ivKLY=;
        b=s29Vk2nEnjeG5XmfM7N1lBrZrqj4ifjJ8Exv6bucTXJAmp+0qhO3dWIuajNkqvW1p4
         m58IwRu7EcbrVwZdU4dDRYZqYpRic1630zLYEJyH22i3JIPV+CPL0YhQh37il4zvNM3L
         iup8q04NL4oKW7vJdvvC5rZKiqWkIoBw30WJPOrZVh+wwVvyYbYHokbbMkIYCX+nlxyV
         Sk9tW1m8Vq/IJMk33At9198GR+PWUndDz5m2B/nvI986Jv++gO2IWz8TZiatxzmenmMe
         a3TmuGjXKo6Pc6LaUQnYPnR82Mjk/64/YMfRRCQn4ekQlhbtmmm+3JDJLxnp/8wNgjx9
         3Dtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sOHXpUAMTQSCIqrCFLpSj9apPXZ94PIhljXzw4ivKLY=;
        b=hXzfKz1uOocE4R+xYZCypxuHpp2x254avVrqkkcu6NR2xI1HUs1fxWxMA0R2JB3JOl
         V/dqX8aBDRbf8JMpJYWI+ntlDoECTTv9pvyzfKF8Tx9lo99ZRLLvLrPIRM5GOCPhhAXQ
         Qf9bFSmGqr9YPS4UdMkcyC+pRkM81bDpAk0KZCMJ8cC8nxNP0hM66HUdWpfp+XA0tW2p
         Wtra/viT+1KvtJPU7cdSn95c6RgH2aCzybCMkL2yU26NhyRJQz9uPbWOe/pZVnyJ7Xx1
         b10if0VRX0Kkup+AlZk/8eGE5oI9rDQY9M9XL3tAwOnDnB535DprZSP3iUx6hW/vBcPV
         y90A==
X-Gm-Message-State: AOAM53258fLqZg/YP5BVtmYzVZOVHBvXoTl/xC8DCUxvVXy5baI0mZmc
	JAF1k2lGJLlcLtIQZKeu8sY=
X-Google-Smtp-Source: ABdhPJxS8kXpzyVqVHuXjKne++M1xmaR/kGHEq5JGp2rq26/vwJ6lb/6vGYZ2QQ/Dq9fSjJoiv7C3g==
X-Received: by 2002:a19:521a:: with SMTP id m26mr1827401lfb.56.1616184865751;
        Fri, 19 Mar 2021 13:14:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls4518731lfo.0.gmail; Fri, 19 Mar
 2021 13:14:24 -0700 (PDT)
X-Received: by 2002:ac2:4576:: with SMTP id k22mr1768189lfm.523.1616184864722;
        Fri, 19 Mar 2021 13:14:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616184864; cv=none;
        d=google.com; s=arc-20160816;
        b=xIiZNlcAK7eRay1dWFrCY2ZyE84StTep+2YrL53SxWyLpN1Z408oN6vOlGx77FT5zM
         Udk9YGk6GJZ54Kqq5RA5UQ5Ht5KPMlPrasDAJt4Dhxaj53/ooTXVA9NtpbBS6jQM0LXN
         z1ThY5/+Q210FdtdPRe4uOParj6guUvsWU0UzDQCiCq8S5QDgZlD+50pmHozoWmezjgq
         LDJGoh/MaokUBSidW3rZm/x9YaRqtiP9UNU0NgzFt59vbmrSu6cfZ0Z1C9q5oKBOMk1I
         dAP18FKnwXu/uP1qj/tNB2VVKpFNbIOFbMhZPIaEfXXQUHaRJpDJDaSbrfCYbxo0VNn8
         PbKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RvOjgqwWW3clzClIdavb3LBjtoVdf90BUwhd8/w3So8=;
        b=vrOyzaqoCtpKwVVUiEpn4PGusUFoj9V6U1Tc6d+Cxf48oVA8RJ0gdX0mi8585+rhDz
         kvHrloglFAwy9R9E3qcUCTf6te55JH3UMxnRTibIPZPcOudM4JRd0GFCyVE7k/gY8VdK
         uKHA652Kn1xsa89RhUI8Ze68Z4hFBcGmjcEXzD5W+I0tE4ArFAdWtEeKDnyNe3RMf0+X
         ZWVs9KnNykudHar1GR2n6dewC8kZgd+pnuav8Yn6FaEdaRUKDvq4ttnPyxnZLPA2eiGq
         eNJljveYinkkTkSiw9fadfdKJU827ap/fJqllKzOWy35PH6In0UFGsJ9D/zmEFkmrgyH
         514A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bLwwMsWK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id f7si35221lfa.0.2021.03.19.13.14.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 13:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id g8so4738758lfv.12
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 13:14:24 -0700 (PDT)
X-Received: by 2002:a05:6512:985:: with SMTP id w5mr1740133lft.122.1616184864202;
 Fri, 19 Mar 2021 13:14:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXGT8Zgz3Pn+DDJnY6HRz3ugbkFozJycGBW+Cm6RvyYBHA@mail.gmail.com>
 <20210316165918.1794549-1-ndesaulniers@google.com> <YFR3jWxAdb7gJ1Cu@kroah.com>
In-Reply-To: <YFR3jWxAdb7gJ1Cu@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Mar 2021 13:14:12 -0700
Message-ID: <CAKwvOdmb04CD0msrieHj6zj5NjsZ4E90V5sjuXHnt=XwN68uQw@mail.gmail.com>
Subject: Re: [PATCH 5.4 2/2] ARM: 9044/1: vfp: use undef hook for VFP support detection
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>, Russell King <rmk+kernel@armlinux.org.uk>, 
	"# 3.4.x" <stable@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Dmitry Osipenko <digetx@gmail.com>, Kees Cook <keescook@chromium.org>
Content-Type: multipart/mixed; boundary="000000000000b9bace05bde95c8a"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bLwwMsWK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
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

--000000000000b9bace05bde95c8a
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 19, 2021 at 3:06 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Mar 16, 2021 at 09:59:18AM -0700, Nick Desaulniers wrote:
> > If it's preferrable to send an .mbox file or a series with cover letter,
> > I'm happy to resend it as such, just let me know.
>
> Please resend it that way, makes it easier to figure out what is going
> on here...

Dear stable kernel maintainers,
Please consider applying the following mbox file to linux-5.4.y.  It
contains 2 cherry-picks of `Fixes:` for a patch in 5.4.

Ard reported linux-5.4.y with CONFIG_THUMB2_KERNEL=y was broken without these in
https://lore.kernel.org/stable/CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com/.

The mbox contains:
commit f77ac2e378be ("ARM: 9030/1: entry: omit FP emulation for UND
exceptions taken in kernel mode")
commit 3cce9d44321e ("ARM: 9044/1: vfp: use undef hook for VFP support
detection")

They first landed in v5.11-rc1.  The first is a fixup for:
commit eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections")

which exists in 5.4.90 as 87ea51c90280.

The first has a conflict in arch/arm/vfp/vfphw.S due to missing
commit 2cbd1cc3dcd3 ("ARM: 8991/1: use VFP assembler mnemonics if available")]
in 5.4.  2cbd1cc3dcd3 causes breakage in ARCH=axm55xx_defconfig
previously reported:
https://lore.kernel.org/stable/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-us.net/
and will need to be reworked if we ever do backport it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmb04CD0msrieHj6zj5NjsZ4E90V5sjuXHnt%3DXwN68uQw%40mail.gmail.com.

--000000000000b9bace05bde95c8a
Content-Type: application/octet-stream; 
	name="5.4.f77ac2e378be.3cce9d44321e.mbox"
Content-Disposition: attachment; 
	filename="5.4.f77ac2e378be.3cce9d44321e.mbox"
Content-Transfer-Encoding: base64
Content-ID: <f_kmgqo4gl0>
X-Attachment-Id: f_kmgqo4gl0

RnJvbSA1N2UwMGQ3YjU3NjQ2MDkwMGI4N2U5OWMxMTc1MjFhMTUwY2VjMzM4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBBcmQgQmllc2hldXZlbCA8YXJkYkBrZXJuZWwub3JnPgpEYXRl
OiBNb24sIDE1IE1hciAyMDIxIDE2OjE5OjUyIC0wNzAwClN1YmplY3Q6IFtQQVRDSCAxLzJdIEFS
TTogOTAzMC8xOiBlbnRyeTogb21pdCBGUCBlbXVsYXRpb24gZm9yIFVORCBleGNlcHRpb25zCiB0
YWtlbiBpbiBrZXJuZWwgbW9kZQoKY29tbWl0IGY3N2FjMmUzNzhiZTlkZDYxZWI4ODcyOGYwODQw
NjQyZjA0NWQ5ZDEgdXBzdHJlYW0uCgpUaGVyZSBhcmUgYSBjb3VwbGUgb2YgcHJvYmxlbXMgd2l0
aCB0aGUgZXhjZXB0aW9uIGVudHJ5IGNvZGUgdGhhdCBkZWFscwp3aXRoIEZQIGV4Y2VwdGlvbnMg
KHdoaWNoIGFyZSByZXBvcnRlZCBhcyBVTkQgZXhjZXB0aW9ucykgd2hlbiBidWlsZGluZwp0aGUg
a2VybmVsIGluIFRodW1iMiBtb2RlOgotIHRoZSBjb25kaXRpb25hbCBicmFuY2ggdG8gdmZwX2tt
b2RlX2V4Y2VwdGlvbiBpbiB2ZnBfc3VwcG9ydF9lbnRyeSgpCiAgbWF5IGJlIG91dCBvZiByYW5n
ZSBmb3IgaXRzIHRhcmdldCwgZGVwZW5kaW5nIG9uIGhvdyB0aGUgbGlua2VyIGRlY2lkZXMKICB0
byBhcnJhbmdlIHRoZSBzZWN0aW9uczsKLSB3aGVuIHRoZSBVTkQgZXhjZXB0aW9uIGlzIHRha2Vu
IGluIGtlcm5lbCBtb2RlLCB0aGUgZW11bGF0aW9uIGhhbmRsaW5nCiAgbG9naWMgaXMgZW50ZXJl
ZCB2aWEgdGhlICdjYWxsX2ZwZScgbGFiZWwsIHdoaWNoIG1lYW5zIHdlIGVuZCB1cCB1c2luZwog
IHRoZSB3cm9uZyB2YWx1ZS9tYXNrIHBhaXJzIHRvIG1hdGNoIGFuZCBkZXRlY3QgdGhlIE5FT04g
b3Bjb2Rlcy4KClNpbmNlIFVORCBleGNlcHRpb25zIGluIGtlcm5lbCBtb2RlIGFyZSB1bmxpa2Vs
eSB0byBvY2N1ciBvbiBhIGhvdCBwYXRoCihhcyBvcHBvc2VkIHRvIHRoZSB1c2VyIG1vZGUgdmVy
c2lvbiB3aGljaCBpcyBpbnZva2VkIGZvciBWRlAgc3VwcG9ydApjb2RlIGFuZCBsYXp5IHJlc3Rv
cmUpLCB3ZSBjYW4gdXNlIHRoZSBleGlzdGluZyB1bmRlZiBob29rIG1hY2hpbmVyeSBmb3IKYW55
IGtlcm5lbCBtb2RlIGluc3RydWN0aW9uIGVtdWxhdGlvbiB0aGF0IGlzIG5lZWRlZCwgaW5jbHVk
aW5nIGNhbGxpbmcKdGhlIGV4aXN0aW5nIHZmcF9rbW9kZV9leGNlcHRpb24oKSByb3V0aW5lIGZv
ciB1bmV4cGVjdGVkIGNhc2VzLiBTbyBkcm9wCnRoZSBjYWxsIHRvIGNhbGxfZnBlLCBhbmQgaW5z
dGVhZCwgaW5zdGFsbCBhbiB1bmRlZiBob29rIHRoYXQgd2lsbCBnZXQKY2FsbGVkIGZvciBORU9O
IGFuZCBWRlAgaW5zdHJ1Y3Rpb25zIHRoYXQgdHJpZ2dlciBhbiBVTkQgZXhjZXB0aW9uIGluCmtl
cm5lbCBtb2RlLgoKV2hpbGUgYXQgaXQsIG1ha2Ugc3VyZSB0aGF0IHRoZSBQQyBjb3JyZWN0aW9u
IGlzIGFjY3VyYXRlIGZvciB0aGUKZXhlY3V0aW9uIG1vZGUgd2hlcmUgdGhlIGV4Y2VwdGlvbiB3
YXMgdGFrZW4sIGJ5IGNoZWNraW5nIHRoZSBQU1IKVGh1bWIgYml0LgoKW25kOiBmaXggY29uZmxp
Y3QgaW4gYXJjaC9hcm0vdmZwL3ZmcGh3LlMgZHVlIHRvIG1pc3NpbmcKICAgICBjb21taXQgMmNi
ZDFjYzNkY2QzICgiQVJNOiA4OTkxLzE6IHVzZSBWRlAgYXNzZW1ibGVyIG1uZW1vbmljcyBpZgog
ICAgIGF2YWlsYWJsZSIpXQoKRml4ZXM6IGVmZjg3MjhmZTY5OCAoInZtbGludXgubGRzLmg6IEFk
ZCBQR08gYW5kIEF1dG9GRE8gaW5wdXQgc2VjdGlvbnMiKQpTaWduZWQtb2ZmLWJ5OiBBcmQgQmll
c2hldXZlbCA8YXJkYkBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBSdXNzZWxsIEtpbmcgPHJt
aytrZXJuZWxAYXJtbGludXgub3JnLnVrPgpTaWduZWQtb2ZmLWJ5OiBOaWNrIERlc2F1bG5pZXJz
IDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxp
bnVzLndhbGxlaWpAbGluYXJvLm9yZz4KUmV2aWV3ZWQtYnk6IE5pY2sgRGVzYXVsbmllcnMgPG5k
ZXNhdWxuaWVyc0Bnb29nbGUuY29tPgpDYzogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwu
Y29tPgpDYzogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+Ci0tLQogYXJjaC9hcm0v
a2VybmVsL2VudHJ5LWFybXYuUyB8IDI1ICsrLS0tLS0tLS0tLS0tLS0tLQogYXJjaC9hcm0vdmZw
L3ZmcGh3LlMgICAgICAgICB8ICA1IC0tLS0KIGFyY2gvYXJtL3ZmcC92ZnBtb2R1bGUuYyAgICAg
fCA0OSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KIDMgZmlsZXMgY2hhbmdl
ZCwgNDkgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0va2VybmVsL2VudHJ5LWFybXYuUyBiL2FyY2gvYXJtL2tlcm5lbC9lbnRyeS1hcm12LlMKaW5k
ZXggYTg3NGI3NTMzOTdlLi5iNjJkNzRhMmM3M2EgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2tlcm5l
bC9lbnRyeS1hcm12LlMKKysrIGIvYXJjaC9hcm0va2VybmVsL2VudHJ5LWFybXYuUwpAQCAtMjUy
LDMxICsyNTIsMTAgQEAgX191bmRfc3ZjOgogI2Vsc2UKIAlzdmNfZW50cnkKICNlbmRpZgotCUAK
LQlAIGNhbGwgZW11bGF0aW9uIGNvZGUsIHdoaWNoIHJldHVybnMgdXNpbmcgcjkgaWYgaXQgaGFz
IGVtdWxhdGVkCi0JQCB0aGUgaW5zdHJ1Y3Rpb24sIG9yIHRoZSBtb3JlIGNvbnZlbnRpb25hbCBs
ciBpZiB3ZSBhcmUgdG8gdHJlYXQKLQlAIHRoaXMgYXMgYSByZWFsIHVuZGVmaW5lZCBpbnN0cnVj
dGlvbgotCUAKLQlAICByMCAtIGluc3RydWN0aW9uCi0JQAotI2lmbmRlZiBDT05GSUdfVEhVTUIy
X0tFUk5FTAotCWxkcglyMCwgW3I0LCAjLTRdCi0jZWxzZQotCW1vdglyMSwgIzIKLQlsZHJoCXIw
LCBbcjQsICMtMl0JCQlAIFRodW1iIGluc3RydWN0aW9uIGF0IExSIC0gMgotCWNtcAlyMCwgIzB4
ZTgwMAkJCUAgMzItYml0IGluc3RydWN0aW9uIGlmIHh4ID49IDAKLQlibG8JX191bmRfc3ZjX2Zh
dWx0Ci0JbGRyaAlyOSwgW3I0XQkJCUAgYm90dG9tIDE2IGJpdHMKLQlhZGQJcjQsIHI0LCAjMgot
CXN0cglyNCwgW3NwLCAjU19QQ10KLQlvcnIJcjAsIHI5LCByMCwgbHNsICMxNgotI2VuZGlmCi0J
YmFkcglyOSwgX191bmRfc3ZjX2ZpbmlzaAotCW1vdglyMiwgcjQKLQlibAljYWxsX2ZwZQogCiAJ
bW92CXIxLCAjNAkJCQlAIFBDIGNvcnJlY3Rpb24gdG8gYXBwbHkKLV9fdW5kX3N2Y19mYXVsdDoK
KyBUSFVNQigJdHN0CXI1LCAjUFNSX1RfQklUCQkpCUAgZXhjZXB0aW9uIHRha2VuIGluIFRodW1i
IG1vZGU/CisgVEhVTUIoCW1vdm5lCXIxLCAjMgkJCSkJQCBpZiBzbywgZml4IHVwIFBDIGNvcnJl
Y3Rpb24KIAltb3YJcjAsIHNwCQkJCUAgc3RydWN0IHB0X3JlZ3MgKnJlZ3MKIAlibAlfX3VuZF9m
YXVsdAogCmRpZmYgLS1naXQgYS9hcmNoL2FybS92ZnAvdmZwaHcuUyBiL2FyY2gvYXJtL3ZmcC92
ZnBody5TCmluZGV4IGIyZTU2MDI5MDg2MC4uYjUzMGRiOGYyYzZjIDEwMDY0NAotLS0gYS9hcmNo
L2FybS92ZnAvdmZwaHcuUworKysgYi9hcmNoL2FybS92ZnAvdmZwaHcuUwpAQCAtNzgsMTEgKzc4
LDYgQEAKIEVOVFJZKHZmcF9zdXBwb3J0X2VudHJ5KQogCURCR1NUUjMJImluc3RyICUwOHggcGMg
JTA4eCBzdGF0ZSAlcCIsIHIwLCByMiwgcjEwCiAKLQlsZHIJcjMsIFtzcCwgI1NfUFNSXQlAIE5l
aXRoZXIgbGF6eSByZXN0b3JlIG5vciBGUCBleGNlcHRpb25zCi0JYW5kCXIzLCByMywgI01PREVf
TUFTSwlAIGFyZSBzdXBwb3J0ZWQgaW4ga2VybmVsIG1vZGUKLQl0ZXEJcjMsICNVU1JfTU9ERQot
CWJuZQl2ZnBfa21vZGVfZXhjZXB0aW9uCUAgUmV0dXJucyB0aHJvdWdoIGxyCi0KIAlWRlBGTVJY
CXIxLCBGUEVYQwkJQCBJcyB0aGUgVkZQIGVuYWJsZWQ/CiAJREJHU1RSMQkiZnBleGMgJTA4eCIs
IHIxCiAJdHN0CXIxLCAjRlBFWENfRU4KZGlmZiAtLWdpdCBhL2FyY2gvYXJtL3ZmcC92ZnBtb2R1
bGUuYyBiL2FyY2gvYXJtL3ZmcC92ZnBtb2R1bGUuYwppbmRleCA4YzllN2Y5ZjAyNzcuLmMzYjY0
NTFjMThiZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vdmZwL3ZmcG1vZHVsZS5jCisrKyBiL2FyY2gv
YXJtL3ZmcC92ZnBtb2R1bGUuYwpAQCAtMjMsNiArMjMsNyBAQAogI2luY2x1ZGUgPGFzbS9jcHV0
eXBlLmg+CiAjaW5jbHVkZSA8YXNtL3N5c3RlbV9pbmZvLmg+CiAjaW5jbHVkZSA8YXNtL3RocmVh
ZF9ub3RpZnkuaD4KKyNpbmNsdWRlIDxhc20vdHJhcHMuaD4KICNpbmNsdWRlIDxhc20vdmZwLmg+
CiAKICNpbmNsdWRlICJ2ZnBpbnN0ci5oIgpAQCAtNjQyLDcgKzY0Myw5IEBAIHN0YXRpYyBpbnQg
dmZwX3N0YXJ0aW5nX2NwdSh1bnNpZ25lZCBpbnQgdW51c2VkKQogCXJldHVybiAwOwogfQogCi12
b2lkIHZmcF9rbW9kZV9leGNlcHRpb24odm9pZCkKKyNpZmRlZiBDT05GSUdfS0VSTkVMX01PREVf
TkVPTgorCitzdGF0aWMgaW50IHZmcF9rbW9kZV9leGNlcHRpb24oc3RydWN0IHB0X3JlZ3MgKnJl
Z3MsIHVuc2lnbmVkIGludCBpbnN0cikKIHsKIAkvKgogCSAqIElmIHdlIHJlYWNoIHRoaXMgcG9p
bnQsIGEgZmxvYXRpbmcgcG9pbnQgZXhjZXB0aW9uIGhhcyBiZWVuIHJhaXNlZApAQCAtNjYwLDkg
KzY2Myw1MSBAQCB2b2lkIHZmcF9rbW9kZV9leGNlcHRpb24odm9pZCkKIAkJcHJfY3JpdCgiQlVH
OiB1bnN1cHBvcnRlZCBGUCBpbnN0cnVjdGlvbiBpbiBrZXJuZWwgbW9kZVxuIik7CiAJZWxzZQog
CQlwcl9jcml0KCJCVUc6IEZQIGluc3RydWN0aW9uIGlzc3VlZCBpbiBrZXJuZWwgbW9kZSB3aXRo
IEZQIHVuaXQgZGlzYWJsZWRcbiIpOworCXByX2NyaXQoIkZQRVhDID09IDB4JTA4eFxuIiwgZm1y
eChGUEVYQykpOworCXJldHVybiAxOwogfQogCi0jaWZkZWYgQ09ORklHX0tFUk5FTF9NT0RFX05F
T04KK3N0YXRpYyBzdHJ1Y3QgdW5kZWZfaG9vayB2ZnBfa21vZGVfZXhjZXB0aW9uX2hvb2tbXSA9
IHt7CisJLmluc3RyX21hc2sJPSAweGZlMDAwMDAwLAorCS5pbnN0cl92YWwJPSAweGYyMDAwMDAw
LAorCS5jcHNyX21hc2sJPSBNT0RFX01BU0sgfCBQU1JfVF9CSVQsCisJLmNwc3JfdmFsCT0gU1ZD
X01PREUsCisJLmZuCQk9IHZmcF9rbW9kZV9leGNlcHRpb24sCit9LCB7CisJLmluc3RyX21hc2sJ
PSAweGZmMTAwMDAwLAorCS5pbnN0cl92YWwJPSAweGY0MDAwMDAwLAorCS5jcHNyX21hc2sJPSBN
T0RFX01BU0sgfCBQU1JfVF9CSVQsCisJLmNwc3JfdmFsCT0gU1ZDX01PREUsCisJLmZuCQk9IHZm
cF9rbW9kZV9leGNlcHRpb24sCit9LCB7CisJLmluc3RyX21hc2sJPSAweGVmMDAwMDAwLAorCS5p
bnN0cl92YWwJPSAweGVmMDAwMDAwLAorCS5jcHNyX21hc2sJPSBNT0RFX01BU0sgfCBQU1JfVF9C
SVQsCisJLmNwc3JfdmFsCT0gU1ZDX01PREUgfCBQU1JfVF9CSVQsCisJLmZuCQk9IHZmcF9rbW9k
ZV9leGNlcHRpb24sCit9LCB7CisJLmluc3RyX21hc2sJPSAweGZmMTAwMDAwLAorCS5pbnN0cl92
YWwJPSAweGY5MDAwMDAwLAorCS5jcHNyX21hc2sJPSBNT0RFX01BU0sgfCBQU1JfVF9CSVQsCisJ
LmNwc3JfdmFsCT0gU1ZDX01PREUgfCBQU1JfVF9CSVQsCisJLmZuCQk9IHZmcF9rbW9kZV9leGNl
cHRpb24sCit9LCB7CisJLmluc3RyX21hc2sJPSAweDBjMDAwZTAwLAorCS5pbnN0cl92YWwJPSAw
eDBjMDAwYTAwLAorCS5jcHNyX21hc2sJPSBNT0RFX01BU0ssCisJLmNwc3JfdmFsCT0gU1ZDX01P
REUsCisJLmZuCQk9IHZmcF9rbW9kZV9leGNlcHRpb24sCit9fTsKKworc3RhdGljIGludCBfX2lu
aXQgdmZwX2ttb2RlX2V4Y2VwdGlvbl9ob29rX2luaXQodm9pZCkKK3sKKwlpbnQgaTsKKworCWZv
ciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHZmcF9rbW9kZV9leGNlcHRpb25faG9vayk7IGkrKykK
KwkJcmVnaXN0ZXJfdW5kZWZfaG9vaygmdmZwX2ttb2RlX2V4Y2VwdGlvbl9ob29rW2ldKTsKKwly
ZXR1cm4gMDsKK30KK2NvcmVfaW5pdGNhbGwodmZwX2ttb2RlX2V4Y2VwdGlvbl9ob29rX2luaXQp
OwogCiAvKgogICogS2VybmVsLXNpZGUgTkVPTiBzdXBwb3J0IGZ1bmN0aW9ucwoKYmFzZS1jb21t
aXQ6IDA0MzdkZTI2ZTI4ZGQ4NDRmNTFmZGU3YTc0OWE4MmNiMmQzNjk0YWQKLS0gCjIuMzEuMC5y
YzIuMjYxLmc3ZjcxNzc0NjIwLWdvb2cKCgpGcm9tIDg2NWY2YTBkNzUyNzQ5Y2I1NGFkZWFjODdi
MmIyMDZlNDI5ODhkM2YgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCkZyb206IEFyZCBCaWVzaGV1
dmVsIDxhcmRiQGtlcm5lbC5vcmc+CkRhdGU6IFR1ZSwgMTYgTWFyIDIwMjEgMDk6NTk6MTggLTA3
MDAKU3ViamVjdDogW1BBVENIIDIvMl0gQVJNOiA5MDQ0LzE6IHZmcDogdXNlIHVuZGVmIGhvb2sg
Zm9yIFZGUCBzdXBwb3J0CiBkZXRlY3Rpb24KCmNvbW1pdCAzY2NlOWQ0NDMyMWU0NjBlN2M4OGNk
ZWM0ZTQ1MzdhNmU5YWQ3YzBkIHVwc3RyZWFtLgoKQ29tbWl0IGY3N2FjMmUzNzhiZTlkZDYgKCJB
Uk06IDkwMzAvMTogZW50cnk6IG9taXQgRlAgZW11bGF0aW9uIGZvciBVTkQKZXhjZXB0aW9ucyB0
YWtlbiBpbiBrZXJuZWwgbW9kZSIpIGZhaWxlZCB0byB0YWtlIGludG8gYWNjb3VudCB0aGF0IHRo
ZXJlCmlzIGluIGZhY3QgYSBjYXNlIHdoZXJlIHdlIHJlbGllZCBvbiB0aGlzIGNvZGUgcGF0aDog
ZHVyaW5nIGJvb3QsIHRoZQpWRlAgZGV0ZWN0aW9uIGNvZGUgaXNzdWVzIGEgcmVhZCBvZiBGUFNJ
RCwgd2hpY2ggd2lsbCB0cmlnZ2VyIGFuIHVuZGVmCmV4Y2VwdGlvbiBvbiBjb3JlcyB0aGF0IGxh
Y2sgVkZQIHN1cHBvcnQuCgpTbyBsZXQncyByZWluc3RhdGUgdGhpcyBsb2dpYyB1c2luZyBhbiB1
bmRlZiBob29rIHdoaWNoIGlzIHJlZ2lzdGVyZWQKb25seSBmb3IgdGhlIGR1cmF0aW9uIG9mIHRo
ZSBpbml0Y2FsbCB0byB2cGZfaW5pdCgpLCBhbmQgd2hpY2ggc2V0cwpWRlBfYXJjaCB0byBhIG5v
bi16ZXJvIHZhbHVlIC0gYXMgYmVmb3JlIC0gaWYgbm8gVkZQIHN1cHBvcnQgaXMgcHJlc2VudC4K
CkZpeGVzOiBmNzdhYzJlMzc4YmU5ZGQ2ICgiQVJNOiA5MDMwLzE6IGVudHJ5OiBvbWl0IEZQIGVt
dWxhdGlvbiBmb3IgVU5EIC4uLiIpClJlcG9ydGVkLWJ5OiAia2VybmVsY2kub3JnIGJvdCIgPGJv
dEBrZXJuZWxjaS5vcmc+ClNpZ25lZC1vZmYtYnk6IEFyZCBCaWVzaGV1dmVsIDxhcmRiQGtlcm5l
bC5vcmc+ClNpZ25lZC1vZmYtYnk6IFJ1c3NlbGwgS2luZyA8cm1rK2tlcm5lbEBhcm1saW51eC5v
cmcudWs+ClNpZ25lZC1vZmYtYnk6IE5pY2sgRGVzYXVsbmllcnMgPG5kZXNhdWxuaWVyc0Bnb29n
bGUuY29tPgotLS0KIGFyY2gvYXJtL3ZmcC9lbnRyeS5TICAgICB8IDE3IC0tLS0tLS0tLS0tLS0t
LS0tCiBhcmNoL2FybS92ZnAvdmZwbW9kdWxlLmMgfCAyNSArKysrKysrKysrKysrKysrKysrKy0t
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL3ZmcC9lbnRyeS5TIGIvYXJjaC9hcm0vdmZwL2VudHJ5LlMK
aW5kZXggMDE4NmNmOWRhODkwLi4yN2IwYTFmMjdmYmQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL3Zm
cC9lbnRyeS5TCisrKyBiL2FyY2gvYXJtL3ZmcC9lbnRyeS5TCkBAIC0zNywyMCArMzcsMyBAQCBF
TkRQUk9DKHZmcF9udWxsX2VudHJ5KQogCS5hbGlnbgkyCiAuTEN2ZnA6CiAJLndvcmQJdmZwX3Zl
Y3RvcgotCi1AIFRoaXMgY29kZSBpcyBjYWxsZWQgaWYgdGhlIFZGUCBkb2VzIG5vdCBleGlzdC4g
SXQgbmVlZHMgdG8gZmxhZyB0aGUKLUAgZmFpbHVyZSB0byB0aGUgVkZQIGluaXRpYWxpc2F0aW9u
IGNvZGUuCi0KLQlfX0lOSVQKLUVOVFJZKHZmcF90ZXN0aW5nX2VudHJ5KQotCWRlY19wcmVlbXB0
X2NvdW50X3RpIHIxMCwgcjQKLQlsZHIJcjAsIFZGUF9hcmNoX2FkZHJlc3MKLQlzdHIJcjAsIFty
MF0JCUAgc2V0IHRvIG5vbi16ZXJvIHZhbHVlCi0JcmV0CXI5CQkJQCB3ZSBoYXZlIGhhbmRsZWQg
dGhlIGZhdWx0Ci1FTkRQUk9DKHZmcF90ZXN0aW5nX2VudHJ5KQotCi0JLmFsaWduCTIKLVZGUF9h
cmNoX2FkZHJlc3M6Ci0JLndvcmQJVkZQX2FyY2gKLQotCV9fRklOSVQKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtL3ZmcC92ZnBtb2R1bGUuYyBiL2FyY2gvYXJtL3ZmcC92ZnBtb2R1bGUuYwppbmRleCBj
M2I2NDUxYzE4YmQuLjJjYjM1NWMxYjViNyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vdmZwL3ZmcG1v
ZHVsZS5jCisrKyBiL2FyY2gvYXJtL3ZmcC92ZnBtb2R1bGUuYwpAQCAtMzIsNyArMzIsNiBAQAog
LyoKICAqIE91ciB1bmRlZiBoYW5kbGVycyAoaW4gZW50cnkuUykKICAqLwotYXNtbGlua2FnZSB2
b2lkIHZmcF90ZXN0aW5nX2VudHJ5KHZvaWQpOwogYXNtbGlua2FnZSB2b2lkIHZmcF9zdXBwb3J0
X2VudHJ5KHZvaWQpOwogYXNtbGlua2FnZSB2b2lkIHZmcF9udWxsX2VudHJ5KHZvaWQpOwogCkBA
IC00Myw3ICs0Miw3IEBAIGFzbWxpbmthZ2Ugdm9pZCAoKnZmcF92ZWN0b3IpKHZvaWQpID0gdmZw
X251bGxfZW50cnk7CiAgKiBVc2VkIGluIHN0YXJ0dXA6IHNldCB0byBub24temVybyBpZiBWRlAg
Y2hlY2tzIGZhaWwKICAqIEFmdGVyIHN0YXJ0dXAsIGhvbGRzIFZGUCBhcmNoaXRlY3R1cmUKICAq
LwotdW5zaWduZWQgaW50IFZGUF9hcmNoOworc3RhdGljIHVuc2lnbmVkIGludCBfX2luaXRkYXRh
IFZGUF9hcmNoOwogCiAvKgogICogVGhlIHBvaW50ZXIgdG8gdGhlIHZmcHN0YXRlIHN0cnVjdHVy
ZSBvZiB0aGUgdGhyZWFkIHdoaWNoIGN1cnJlbnRseQpAQCAtNDM3LDcgKzQzNiw3IEBAIHN0YXRp
YyB2b2lkIHZmcF9lbmFibGUodm9pZCAqdW51c2VkKQogICogcHJlc2VudCBvbiBhbGwgQ1BVcyB3
aXRoaW4gYSBTTVAgY29tcGxleC4gTmVlZHMgdG8gYmUgY2FsbGVkIHByaW9yIHRvCiAgKiB2ZnBf
aW5pdCgpLgogICovCi12b2lkIHZmcF9kaXNhYmxlKHZvaWQpCit2b2lkIF9faW5pdCB2ZnBfZGlz
YWJsZSh2b2lkKQogewogCWlmIChWRlBfYXJjaCkgewogCQlwcl9kZWJ1ZygiJXM6IHNob3VsZCBi
ZSBjYWxsZWQgcHJpb3IgdG8gdmZwX2luaXRcbiIsIF9fZnVuY19fKTsKQEAgLTcwNyw3ICs3MDYs
NyBAQCBzdGF0aWMgaW50IF9faW5pdCB2ZnBfa21vZGVfZXhjZXB0aW9uX2hvb2tfaW5pdCh2b2lk
KQogCQlyZWdpc3Rlcl91bmRlZl9ob29rKCZ2ZnBfa21vZGVfZXhjZXB0aW9uX2hvb2tbaV0pOwog
CXJldHVybiAwOwogfQotY29yZV9pbml0Y2FsbCh2ZnBfa21vZGVfZXhjZXB0aW9uX2hvb2tfaW5p
dCk7CitzdWJzeXNfaW5pdGNhbGwodmZwX2ttb2RlX2V4Y2VwdGlvbl9ob29rX2luaXQpOwogCiAv
KgogICogS2VybmVsLXNpZGUgTkVPTiBzdXBwb3J0IGZ1bmN0aW9ucwpAQCAtNzUzLDYgKzc1Miwy
MSBAQCBFWFBPUlRfU1lNQk9MKGtlcm5lbF9uZW9uX2VuZCk7CiAKICNlbmRpZiAvKiBDT05GSUdf
S0VSTkVMX01PREVfTkVPTiAqLwogCitzdGF0aWMgaW50IF9faW5pdCB2ZnBfZGV0ZWN0KHN0cnVj
dCBwdF9yZWdzICpyZWdzLCB1bnNpZ25lZCBpbnQgaW5zdHIpCit7CisJVkZQX2FyY2ggPSBVSU5U
X01BWDsJLyogbWFyayBhcyBub3QgcHJlc2VudCAqLworCXJlZ3MtPkFSTV9wYyArPSA0OworCXJl
dHVybiAwOworfQorCitzdGF0aWMgc3RydWN0IHVuZGVmX2hvb2sgdmZwX2RldGVjdF9ob29rIF9f
aW5pdGRhdGEgPSB7CisJLmluc3RyX21hc2sJPSAweDBjMDAwZTAwLAorCS5pbnN0cl92YWwJPSAw
eDBjMDAwYTAwLAorCS5jcHNyX21hc2sJPSBNT0RFX01BU0ssCisJLmNwc3JfdmFsCT0gU1ZDX01P
REUsCisJLmZuCQk9IHZmcF9kZXRlY3QsCit9OworCiAvKgogICogVkZQIHN1cHBvcnQgY29kZSBp
bml0aWFsaXNhdGlvbi4KICAqLwpAQCAtNzczLDEwICs3ODcsMTEgQEAgc3RhdGljIGludCBfX2lu
aXQgdmZwX2luaXQodm9pZCkKIAkgKiBUaGUgaGFuZGxlciBpcyBhbHJlYWR5IHNldHVwIHRvIGp1
c3QgbG9nIGNhbGxzLCBzbwogCSAqIHdlIGp1c3QgbmVlZCB0byByZWFkIHRoZSBWRlBTSUQgcmVn
aXN0ZXIuCiAJICovCi0JdmZwX3ZlY3RvciA9IHZmcF90ZXN0aW5nX2VudHJ5OworCXJlZ2lzdGVy
X3VuZGVmX2hvb2soJnZmcF9kZXRlY3RfaG9vayk7CiAJYmFycmllcigpOwogCXZmcHNpZCA9IGZt
cngoRlBTSUQpOwogCWJhcnJpZXIoKTsKKwl1bnJlZ2lzdGVyX3VuZGVmX2hvb2soJnZmcF9kZXRl
Y3RfaG9vayk7CiAJdmZwX3ZlY3RvciA9IHZmcF9udWxsX2VudHJ5OwogCiAJcHJfaW5mbygiVkZQ
IHN1cHBvcnQgdjAuMzogIik7Ci0tIAoyLjMxLjAucmMyLjI2MS5nN2Y3MTc3NDYyMC1nb29nCgo=
--000000000000b9bace05bde95c8a--

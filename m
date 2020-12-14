Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX7E377AKGQEPSUYD2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5AD2DA402
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 00:16:49 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id my8sf7534467pjb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 15:16:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607987807; cv=pass;
        d=google.com; s=arc-20160816;
        b=nGVTWCfJv/+TxahvTlKb6fRjVz9gFSIteHBaneYT1A2t+iOh7OEJqSNNrZHimh7Bhm
         UyWgJLjDn4u7Kkr7GCYE7efHbPEc83z3i7ia2jfviHWnyHbBgJLQNcYOqTfHu2Oaybag
         uyYTVLuQM9GZHY0tKewvtHRMKH8axVv4I7eZKgLhdIwbmJOEuhlOzF2ZO7V1y7i6Geo/
         M4d5XmUPk7e9hGRQ2xJFJhSUPqh7gc+WmYsthXLXpxjmPakVhmv3w2NQv09uo6AyNAnt
         vJGEumdLYLR3yIma7y1t4BAisKEU2sDbV3mkst1LjYuMv85rX91jHGvvw6VjUhvfTDpC
         /bYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=heNbST/5Q7K+iW+1oqpc2T9eI63nN8GH+WQQ0Onw+QY=;
        b=xszFYqAnOGzJSXMPj+XzH2zVUiXCYIbnb9LEP2jNkarLmaseKI72uDANds2yp0OUkH
         mnhA8zNMF3EqJQ8zCeBXjCRiS0aO/zNwYjnzdcN58xkUkQ0OSCTWmXp2KFZM7UDtgmWO
         gLiDC88lceFtAl3+Lt9fKEInSdXVBU1peWWQl6vbyGdS6gk0/HcLUGnajqMpqJkZEEsz
         MIhVggXnYXdcFVKnVFKTW8bx88SbTPE8YXknBT7LF5QyYYmQX073yNCWVJJ0X4WDDC2q
         n/9OokYEcYcvNpxau3Hx40P51wmSw06+C/U976AQGKPcYQYY5vh3fdHN2vEBJJEZ5PqZ
         341g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DZVrd+9a;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heNbST/5Q7K+iW+1oqpc2T9eI63nN8GH+WQQ0Onw+QY=;
        b=D3Tanyp6fi9G9LQK4HkNEpnTeuFkAJUDhD2kklszW6HOkIwZqdYltbiShpEHMUttqt
         e8nQo3l2rmzHTcuPpBP3eSqDHfJVW5+rBaN1iNFz/7XrBqaAH2IxEkpepvm1FFfb98jF
         NDnykqEi8K/fu6RplX3tV9G2jQIpmB7dWezobDzwi2dhrPzDCyab/efrngfADA3S2Uew
         C5FFFP0l+37IbpiWy+DH78HDGKkNHO2B8izIfh1KsR91vGJWC2zJRbhiPJzXyX2TDlCG
         N7yPQq13Sp5cssWzpC6D/OBGoPPVrKN28QDGASyH8ng2Dk0cY/8826LaxRxUeBcwW6lR
         anGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heNbST/5Q7K+iW+1oqpc2T9eI63nN8GH+WQQ0Onw+QY=;
        b=pPrUexBqI3Oc+Gzdi15uFXrTeU/PAbmen1JS0d8LFfMPAt6AI/EtEkPkYTxxZgcgzP
         c0Oah2EenDovAMyB6qwK+8QgIdpxvjXhJaL03EqBswVQudTgJ/a6Eejb1shYM3Tuho9s
         d66XckxJK4g1HUmTLQEs6+auvS5Zi50ilbzVJdt5gLlchhxQA8/8gmsV/FMXVuw5KDZh
         naUlXTv7YsZlI8r5Jq0EfO/gDoQPrtsVXcShBgh2mLmkrvMCyLbjCUhDeXDxTd9jrYDn
         pg/3f8Od2BFZd9bm1hUPd+h15ccnS2DhBokMX6laNfuEaZ6iEKOXP2R1csd7QtXQzD5B
         pZNw==
X-Gm-Message-State: AOAM5320a4rPsejMzV11oDC1reyP5swaJEYYWPwjkNSIBDhjQshqjyEP
	y1Gn2hNGUVzXn3AsENeWjr8=
X-Google-Smtp-Source: ABdhPJx/SSayM3XrZZsFwFnMvA8hotr76BcQfZYs6DjXy/QHsK7pZDrb3PXlAjSQgeihXYKczhFJ7Q==
X-Received: by 2002:a65:4642:: with SMTP id k2mr26641219pgr.338.1607987807521;
        Mon, 14 Dec 2020 15:16:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6491:: with SMTP id y139ls6958631pfb.6.gmail; Mon, 14
 Dec 2020 15:16:46 -0800 (PST)
X-Received: by 2002:a63:5114:: with SMTP id f20mr24206116pgb.5.1607987806508;
        Mon, 14 Dec 2020 15:16:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607987806; cv=none;
        d=google.com; s=arc-20160816;
        b=Dx7oV24pjhjfvdVSd0m1cHbTm6JAu/3MrVpoxCpqk3Zh/t7mGxUI98Ls4BxZTiCSC6
         9ekYfvtRL3JHO2v/Tvtwrnpq4OXnwDdEAMBWzIbv31hGfRKyo9sTGn6Y1kbzyW7qTahS
         Dszbc63oXsHDXRFVE0ADv64xIV6zqE/EyN7EKTL6HeJ5jKIaIVIELNd3/k0vsm+DJK9S
         d0c8xp6KCWxKFaOMvX7tx5j0Feb6eY73bYKpvq17oDvoHFcWMmsYX42WNZ/ZvUqPGxWf
         86KRRKVpGi636ONhcJT7BsLl1kvfJd//Gf8M+35L4GNU26armHi+wp0KdtdbE8wUAujC
         v3OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vX5wPq+7mdBY7hGLsMd2ZNQzLHb2GTIOmX39pX0Pi1g=;
        b=eAbgLaZDMvE3SghOPRvVmRenct961nsgXn2T8Q5PcheXbRBRrt4FsYAfv8T8lnEG3+
         F1EDjMkzxWFb9ireHQyfkkbKTzWIzILHMLXWuHS4bKrTcZQorPdsxBbUxlQ63M+NLL+b
         SyviRJujqjpPt3tSbiXp8/8RRqXT6TJFkrAmM5IooIYAGunopqrOWU8j54j+8SfAKP4m
         YHnohc8z2tx41icim2AcL8OXYuf7RFoDcd12vl6LHvJqUnsWZvwO0g5prRQwlb2ikmI/
         rC6LFgWcxL6shBbBgwToTPWXmxTpSrfGfhFdvOpvX6LThS3i08Ykonelc3qxcCcPIX9P
         6q1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DZVrd+9a;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id h11si5488pjv.3.2020.12.14.15.16.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 15:16:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id t37so13849060pga.7
        for <clang-built-linux@googlegroups.com>; Mon, 14 Dec 2020 15:16:46 -0800 (PST)
X-Received: by 2002:a63:184c:: with SMTP id 12mr19395754pgy.381.1607987805946;
 Mon, 14 Dec 2020 15:16:45 -0800 (PST)
MIME-Version: 1.0
References: <1604431094102246@kroah.com>
In-Reply-To: <1604431094102246@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Dec 2020 15:16:34 -0800
Message-ID: <CAKwvOdkE8_1s4xPYU0Gq9Ld9XhkFn1FowJJt5ZF5ve9zT8uL1w@mail.gmail.com>
Subject: Re: FAILED: patch "[PATCH] arm64: Change .weak to SYM_FUNC_START_WEAK_PI
 for" failed to apply to 4.19-stable tree
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mark Brown <broonie@kernel.org>
Content-Type: multipart/mixed; boundary="000000000000fac5a105b674d551"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DZVrd+9a;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536
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

--000000000000fac5a105b674d551
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 3, 2020 at 11:18 AM <gregkh@linuxfoundation.org> wrote:
>
>
> The patch below does not apply to the 4.19-stable tree.
> If someone wants it applied there, or to any other stable or longterm
> tree, then please email the backport, including the original git commit
> id to <stable@vger.kernel.org>.
>
> thanks,
>
> greg k-h
>
> ------------------ original commit in Linus's tree ------------------
>
> From ec9d78070de986ecf581ea204fd322af4d2477ec Mon Sep 17 00:00:00 2001
> From: Fangrui Song <maskray@google.com>
> Date: Thu, 29 Oct 2020 11:19:51 -0700
> Subject: [PATCH] arm64: Change .weak to SYM_FUNC_START_WEAK_PI for
>  arch/arm64/lib/mem*.S

Dear stable kernel maintainers, please consider applying the attached
patch for 4.19.y.  It is adjusted to avoid conflicts due to:
      commit 3ac0f4526dfb ("arm64: lib: Use modern annotations for
assembly functions")
      commit 35e61c77ef38 ("arm64: asm: Add new-style position
independent function annotations")]
not being backported to 4.19.y.  It helps us enable LLVM_IAS=1 builds
for aarch64 for Android and CrOS.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkE8_1s4xPYU0Gq9Ld9XhkFn1FowJJt5ZF5ve9zT8uL1w%40mail.gmail.com.

--000000000000fac5a105b674d551
Content-Type: application/octet-stream; 
	name="0001-arm64-Change-.weak-to-SYM_FUNC_START_WEAK_PI-for-arc.patch"
Content-Disposition: attachment; 
	filename="0001-arm64-Change-.weak-to-SYM_FUNC_START_WEAK_PI-for-arc.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kip6ddlv0>
X-Attachment-Id: f_kip6ddlv0

RnJvbSA2Zjc5MTVjZGYyMzMyZjFmZjkxMDhjZDE2OTM2ZTJkMTE1YzMxMTlkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBGYW5ncnVpIFNvbmcgPG1hc2tyYXlAZ29vZ2xlLmNvbT4KRGF0
ZTogVGh1LCAyOSBPY3QgMjAyMCAxMToxOTo1MSAtMDcwMApTdWJqZWN0OiBbUEFUQ0hdIGFybTY0
OiBDaGFuZ2UgLndlYWsgdG8gU1lNX0ZVTkNfU1RBUlRfV0VBS19QSSBmb3IKIGFyY2gvYXJtNjQv
bGliL21lbSouUwoKY29tbWl0IGVjOWQ3ODA3MGRlOTg2ZWNmNTgxZWEyMDRmZDMyMmFmNGQyNDc3
ZWMgdXBzdHJlYW0uCgpDb21taXQgMzlkMTE0ZGRjNjgyICgiYXJtNjQ6IGFkZCBLQVNBTiBzdXBw
b3J0IikgYWRkZWQgLndlYWsgZGlyZWN0aXZlcyB0bwphcmNoL2FybTY0L2xpYi9tZW0qLlMgaW5z
dGVhZCBvZiBjaGFuZ2luZyB0aGUgZXhpc3RpbmcgU1lNX0ZVTkNfU1RBUlRfUEkKbWFjcm9zLiBU
aGlzIGNhbiBsZWFkIHRvIHRoZSBhc3NlbWJseSBzbmlwcGV0IGAud2VhayBtZW1jcHkgLi4uIC5n
bG9ibAptZW1jcHlgIHdoaWNoIHdpbGwgcHJvZHVjZSBhIFNUQl9XRUFLIG1lbWNweSB3aXRoIEdO
VSBhcyBidXQgU1RCX0dMT0JBTAptZW1jcHkgd2l0aCBMTFZNJ3MgaW50ZWdyYXRlZCBhc3NlbWJs
ZXIgYmVmb3JlIExMVk0gMTIuIExMVk0gMTIgKHNpbmNlCmh0dHBzOi8vcmV2aWV3cy5sbHZtLm9y
Zy9EOTAxMDgpIHdpbGwgZXJyb3Igb24gc3VjaCBhbiBvdmVycmlkZGVuIHN5bWJvbApiaW5kaW5n
LgoKVXNlIHRoZSBhcHByb3ByaWF0ZSBTWU1fRlVOQ19TVEFSVF9XRUFLX1BJIGluc3RlYWQuCgpG
aXhlczogMzlkMTE0ZGRjNjgyICgiYXJtNjQ6IGFkZCBLQVNBTiBzdXBwb3J0IikKUmVwb3J0ZWQt
Ynk6IFNhbWkgVG9sdmFuZW4gPHNhbWl0b2x2YW5lbkBnb29nbGUuY29tPgpTaWduZWQtb2ZmLWJ5
OiBGYW5ncnVpIFNvbmcgPG1hc2tyYXlAZ29vZ2xlLmNvbT4KVGVzdGVkLWJ5OiBTYW1pIFRvbHZh
bmVuIDxzYW1pdG9sdmFuZW5AZ29vZ2xlLmNvbT4KVGVzdGVkLWJ5OiBOaWNrIERlc2F1bG5pZXJz
IDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KUmV2aWV3ZWQtYnk6IE5pY2sgRGVzYXVsbmllcnMg
PG5kZXNhdWxuaWVyc0Bnb29nbGUuY29tPgpDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+Ckxp
bms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMDEwMjkxODE5NTEuMTg2NjA5My0xLW1h
c2tyYXlAZ29vZ2xlLmNvbQpTaWduZWQtb2ZmLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwu
b3JnPgpbbmQ6IGJhY2twb3J0IHRvIGFkanVzdCBmb3IgbWlzc2luZzoKICBjb21taXQgM2FjMGY0
NTI2ZGZiICgiYXJtNjQ6IGxpYjogVXNlIG1vZGVybiBhbm5vdGF0aW9ucyBmb3IgYXNzZW1ibHkg
ZnVuY3Rpb25zIikKICBjb21taXQgMzVlNjFjNzdlZjM4ICgiYXJtNjQ6IGFzbTogQWRkIG5ldy1z
dHlsZSBwb3NpdGlvbiBpbmRlcGVuZGVudCBmdW5jdGlvbiBhbm5vdGF0aW9ucyIpXQpTaWduZWQt
b2ZmLWJ5OiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KLS0tCiBh
cmNoL2FybTY0L2xpYi9tZW1jcHkuUyAgfCAzICstLQogYXJjaC9hcm02NC9saWIvbWVtbW92ZS5T
IHwgMyArLS0KIGFyY2gvYXJtNjQvbGliL21lbXNldC5TICB8IDMgKy0tCiAzIGZpbGVzIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2xpYi9tZW1jcHkuUyBiL2FyY2gvYXJtNjQvbGliL21lbWNweS5TCmluZGV4IDY3NjEzOTM3
NzExZi4uZGZlZGQ0YWIxYTc2IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2xpYi9tZW1jcHkuUwor
KysgYi9hcmNoL2FybTY0L2xpYi9tZW1jcHkuUwpAQCAtNjgsOSArNjgsOCBAQAogCXN0cCBccHRy
LCBccmVnQiwgW1xyZWdDXSwgXHZhbAogCS5lbmRtCiAKLQkud2VhayBtZW1jcHkKIEVOVFJZKF9f
bWVtY3B5KQotRU5UUlkobWVtY3B5KQorV0VBSyhtZW1jcHkpCiAjaW5jbHVkZSAiY29weV90ZW1w
bGF0ZS5TIgogCXJldAogRU5EUElQUk9DKG1lbWNweSkKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
bGliL21lbW1vdmUuUyBiL2FyY2gvYXJtNjQvbGliL21lbW1vdmUuUwppbmRleCBhNWE0NDU5MDEz
YjEuLmUzZGU4ZjA1YzIxYSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9saWIvbWVtbW92ZS5TCisr
KyBiL2FyY2gvYXJtNjQvbGliL21lbW1vdmUuUwpAQCAtNTcsOSArNTcsOCBAQCBDX2gJLnJlcQl4
MTIKIERfbAkucmVxCXgxMwogRF9oCS5yZXEJeDE0CiAKLQkud2VhayBtZW1tb3ZlCiBFTlRSWShf
X21lbW1vdmUpCi1FTlRSWShtZW1tb3ZlKQorV0VBSyhtZW1tb3ZlKQogCWNtcAlkc3Rpbiwgc3Jj
CiAJYi5sbwlfX21lbWNweQogCWFkZAl0bXAxLCBzcmMsIGNvdW50CmRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2xpYi9tZW1zZXQuUyBiL2FyY2gvYXJtNjQvbGliL21lbXNldC5TCmluZGV4IGYyNjcw
YTlmMjE4Yy4uMzE2MjYzYzQ3YzAwIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2xpYi9tZW1zZXQu
UworKysgYi9hcmNoL2FybTY0L2xpYi9tZW1zZXQuUwpAQCAtNTQsOSArNTQsOCBAQCBkc3QJCS5y
ZXEJeDgKIHRtcDN3CQkucmVxCXc5CiB0bXAzCQkucmVxCXg5CiAKLQkud2VhayBtZW1zZXQKIEVO
VFJZKF9fbWVtc2V0KQotRU5UUlkobWVtc2V0KQorV0VBSyhtZW1zZXQpCiAJbW92CWRzdCwgZHN0
aW4JLyogUHJlc2VydmUgcmV0dXJuIHZhbHVlLiAgKi8KIAlhbmQJQV9sdywgdmFsLCAjMjU1CiAJ
b3JyCUFfbHcsIEFfbHcsIEFfbHcsIGxzbCAjOAotLSAKMi4yOS4yLjY4NC5nZmJjNjRjNWFiNS1n
b29nCgo=
--000000000000fac5a105b674d551--

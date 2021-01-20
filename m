Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBF7ZUKAAMGQE65B32YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFAF2FDCDF
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 00:28:24 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id w135sf67522pff.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 15:28:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611185303; cv=pass;
        d=google.com; s=arc-20160816;
        b=mtoiAtHU9cNYEoBdZ1ZpulM4xZ6bRkpbeEKfdHTn/TXJBLEAyYB6pgrUmLUAyiJMxZ
         QUuTHSh4IJrIzWUE8lSe7bsKiIUqybwwAa765DAHTlJ4YukxzYJYewrJ1Xyg7LPs8GVM
         +zecPjq4SQHVkfXrn/gyqPkbVZH+/KL7U3LihrBox49z196jPvFz2UcVZDaGuo9DV4vL
         feYRCy1E9T4MhidN03dlD16EMrKA/jb8pPTNDx5ZApVz4CSevIf/zXZTjYpsGVL18o4U
         /UWBATSgpHWGsIjhMzk3D/ssRgQN/IrSueQ6xGv/ZcmlR0UKMn/rT13Lp9nHPOhukKx+
         bttg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=68hX3lhBqvWtlwBw99KBo2hjIsCOgFlYei3iUTXCp5o=;
        b=0wfsgH4rrYHhJ2v+iChZf/lJkudBpoi1RJno0Uav7uqQnaIE1uGbC+Ruy02u8faAfP
         cpEOscN2/wLnwzqXdOaF/EgCkPxpwkbdaUZFCrvbkDA8qyRgUfLkuojDBT31EKKbge3K
         FsHNTjx6/IFjZVF+dljl6ErpYKlmDIMrv+C86pkXJi93+V9b1RqqqR3/D/HdYdQuqDuh
         1lio//QXVf0IWkORWntLcRZ42NCOcHpDebbkhmrecZkBz9yf2+1MVpWuGzGe0BB/oy9d
         PVvJ1/mc3xB6FYcDiHcCQn7+/FF7PkOco9D0tsaV4VyMxS1Ve1pDzvN25UDT/RV4ykFM
         3zFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T3Pby1Ta;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::c33 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=68hX3lhBqvWtlwBw99KBo2hjIsCOgFlYei3iUTXCp5o=;
        b=Nz4ZlawvcZTRX2ZwMiWGAItkEJZ/MzBPk35RnW0kqYJ6mmA6Ix2kODg16+VXODRTdY
         CTk5MUhgzjS5dt7NDpgV9O4bJzLp6fcAbpjuloTi9u6t3eN86SzuRonmFiCBNqC9jl+w
         Z/a5g+pahu6ojhRnZfoz48cLzeePgNrlmrmI5yR/oquTiPEwX1lXFaNRFt8Z4zkh4i0P
         qmPY+o6Hny2Zo4eoRNPhwnguVTOfXEG+92IF5KW/whzfUHqc3z4b6g8vp6a0Iz6uL6Fb
         2PDE2Ratan/FuQg513ct78o/d1FgrozcpEkrdWhXxDXuArZNQb9aXev9/7duE48oAzVl
         p7NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=68hX3lhBqvWtlwBw99KBo2hjIsCOgFlYei3iUTXCp5o=;
        b=f2/BzCR0G6NZlmzeJemMuc9fyV91cbWePkLDNVx8cXu/w/WSn1pBngyyXVBKSHqlgK
         4GwXsDc9noxJ/oL3n/G4BBAWYFwnFaFPpq9+GNM1X035xKhbgMKJiAmRMpvy7Ox3kyFF
         nmjxVdlDquLQxsOoL70Z6vOiMSFEtABlf+gkwGuQyMqRA1w//hkKWb+D2Z+kq3XLbbej
         4YgxYvfLW0uQh5F9KEqbUZo3u+anigv2OxbVydc1858ipB1WcDoJzz6mRDpH1q8gCFRO
         zi6RZJFZLoGkJdBsx+gyUTQ+RDjzCOVGtamBLMg0UfUYggUie5DqoXtzs4ZYRpuLPkdV
         /7OQ==
X-Gm-Message-State: AOAM531fxS9Kbx04jdwKOZIMkeewFVCmWE9ZfflRpvpVDBjfHxrnwiCf
	j4LepAfv28opeWW5EW2ObWo=
X-Google-Smtp-Source: ABdhPJzBTolTClxmx0N2t2xRJbldieiX63oD24PNKQM/93EktWP8RhaIusNKMKjHI+BJzNCZtaIYWg==
X-Received: by 2002:a63:5805:: with SMTP id m5mr11576880pgb.352.1611185303347;
        Wed, 20 Jan 2021 15:28:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls116218pga.5.gmail; Wed, 20 Jan
 2021 15:28:22 -0800 (PST)
X-Received: by 2002:a63:7708:: with SMTP id s8mr11663820pgc.437.1611185302546;
        Wed, 20 Jan 2021 15:28:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611185302; cv=none;
        d=google.com; s=arc-20160816;
        b=WblOf14DvLn0ZTHcWzg4AlYZi1dA0NIvlU/psbEubu84uN+pkLDdUYhBwXRxvvo67m
         Y1ZCdtyng3ist/+spX/8avcsH9jLxxG04gnR2dmESujVCes4cEhjQELJYZ3i7paLCOfD
         ZSYEftb4yvhTbzxpLY/ngim96trzrMNxIN+lVBctagDDVJN9A25ljJYpt2qW03cwDotW
         j4cyey2arYnH0H11v9g+er05dLYZJSMbHQ9A4ytIPBHu+QLIEMaoaKQFo9edw5lTd5+y
         s0nFdX+r3uO+hvwWPUYvzRgupvJ6zYyWi1+AyL1QxVDOY8AxY2t4H6Jy8Xvbo4mmONi5
         724w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=bPHv8O6tYmqfBREbt+8wl18m54VbefBlFMKUUJ/jVTc=;
        b=whyYP851cMR6ZmdM8tP2IKaNuCMqxKvvFzMG8XJaKZDz09+WIVOnuDOGt0VYC4vQVV
         68FPupX+TJ82mmMlOT1cX+xXwqT7OjlH1lnbRu5wpb4x3lYU512pd+7/Rg8zdjr2B0D6
         RvKxD/ok6jdvbcKM52JiXs6HZDmTSvUnDynzHk4ylB6FcPH1POq8re/in6oWPwNstCuV
         4AqE9kAbHwrD3azOVQCdl3WVZGazQKsHa647BwtNvOvItC69UW/RZ6rwrdvYTjGVsxL8
         fHlI8W65+GSiu5m4dtVe0RVH3bTjMeCJE4FQ9AZCa9PcHcfXuTKE6jsIEOP36ERcVzqf
         wYeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T3Pby1Ta;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::c33 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com. [2607:f8b0:4864:20::c33])
        by gmr-mx.google.com with ESMTPS id d13si217713pgm.5.2021.01.20.15.28.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 15:28:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::c33 as permitted sender) client-ip=2607:f8b0:4864:20::c33;
Received: by mail-oo1-xc33.google.com with SMTP id r199so65668oor.2
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 15:28:22 -0800 (PST)
X-Received: by 2002:a4a:b987:: with SMTP id e7mr7675147oop.92.1611185301710;
 Wed, 20 Jan 2021 15:28:21 -0800 (PST)
MIME-Version: 1.0
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 Jan 2021 15:28:10 -0800
Message-ID: <CA+SOCLLdvphxVeH+SvaibixLxdwHd+sC-qc=JdLKQoTN-H0waQ@mail.gmail.com>
Subject: 78762b0e79bc1dd01347be061abdf505202152c9 for linux-5.4y
To: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: "# 3.4.x" <stable@vger.kernel.org>, Jiri Slaby <jirislaby@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@suse.de>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Alistair Delva <adelva@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>
Content-Type: multipart/mixed; boundary="00000000000093f97505b95d4fc9"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T3Pby1Ta;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::c33
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--00000000000093f97505b95d4fc9
Content-Type: multipart/alternative; boundary="00000000000093f97305b95d4fc7"

--00000000000093f97305b95d4fc7
Content-Type: text/plain; charset="UTF-8"

Dear stable kernel maintainers,

Please consider applying the following patch for LLVM_IAS=1 support on
Chrome OS:
commit 6e7b64b9dd6d "elfcore: fix building with clang"

Please find in the attached a slightly changed patch due to missing
upstream commit 7a896028adcf. This patch would fix an issue similar to the
one fixed by another upstream patch (
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.4.y&id=070bd3a8ac55)
that has been included in 5.4.

Thanks,
Jian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLdvphxVeH%2BSvaibixLxdwHd%2BsC-qc%3DJdLKQoTN-H0waQ%40mail.gmail.com.

--00000000000093f97305b95d4fc7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear stable kernel maintainers,</div><div><br></div>P=
lease consider applying the following patch for LLVM_IAS=3D1 support on Chr=
ome OS:<br>commit 6e7b64b9dd6d &quot;elfcore: fix building with clang&quot;=
<br><br>Please find in the attached a slightly changed patch due to missing=
 upstream commit 7a896028adcf. This patch would fix an issue similar to the=
 one fixed by another upstream patch (<a href=3D"https://git.kernel.org/pub=
/scm/linux/kernel/git/stable/linux.git/commit/?h=3Dlinux-5.4.y&amp;id=3D070=
bd3a8ac55" target=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/gi=
t/stable/linux.git/commit/?h=3Dlinux-5.4.y&amp;id=3D070bd3a8ac55</a>) that =
has been included in 5.4.<div><div><div><br></div></div><div>Thanks,</div><=
div>Jian</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLLdvphxVeH%2BSvaibixLxdwHd%2BsC-qc%3DJ=
dLKQoTN-H0waQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">http=
s://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLdvphxVeH%2BSvaibi=
xLxdwHd%2BsC-qc%3DJdLKQoTN-H0waQ%40mail.gmail.com</a>.<br />

--00000000000093f97305b95d4fc7--
--00000000000093f97505b95d4fc9
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-elfcore-fix-building-with-clang.patch"
Content-Disposition: attachment; 
	filename="0001-elfcore-fix-building-with-clang.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kk6224wj0>
X-Attachment-Id: f_kk6224wj0

RnJvbSBhMTlmZjY3Y2I3ZTcwMDg0NmM2ZDU4OGYxZTMxZGQ3MWJlMDgxY2UwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgpEYXRlOiBG
cmksIDExIERlYyAyMDIwIDEzOjM2OjQ2IC0wODAwClN1YmplY3Q6IFtQQVRDSF0gZWxmY29yZTog
Zml4IGJ1aWxkaW5nIHdpdGggY2xhbmcKCmNvbW1pdCA2ZTdiNjRiOWRkNmQ5NjUzN2Q4MTZlYTA3
ZWMyNmI3ZGVkZDM5N2I5IHVwc3RyZWFtLgoKa2VybmVsL2VsZmNvcmUuYyBvbmx5IGNvbnRhaW5z
IHdlYWsgc3ltYm9scywgd2hpY2ggdHJpZ2dlcnMgYSBidWcgd2l0aApjbGFuZyBpbiBjb21iaW5h
dGlvbiB3aXRoIHJlY29yZG1jb3VudDoKCiAgQ2Fubm90IGZpbmQgc3ltYm9sIGZvciBzZWN0aW9u
IDI6IC50ZXh0LgogIGtlcm5lbC9lbGZjb3JlLm86IGZhaWxlZAoKTW92ZSB0aGUgZW1wdHkgc3R1
YnMgaW50byBsaW51eC9lbGZjb3JlLmggYXMgaW5saW5lIGZ1bmN0aW9ucy4gIEFzIG9ubHkKdHdv
IGFyY2hpdGVjdHVyZXMgdXNlIHRoZXNlLCBqdXN0IHVzZSB0aGUgYXJjaGl0ZWN0dXJlIHNwZWNp
ZmljIEtjb25maWcKc3ltYm9scyB0byBrZXkgb2ZmIHRoZSBkZWNsYXJhdGlvbi4KCkxpbms6IGh0
dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAyMDEyMDQxNjU3NDIuMzgxNTIyMS0yLWFybmRAa2Vy
bmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgpDYzog
TmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4KQ2M6IE5pY2sgRGVz
YXVsbmllcnMgPG5kZXNhdWxuaWVyc0Bnb29nbGUuY29tPgpDYzogQmFycmV0IFJob2RlbiA8YnJo
b0Bnb29nbGUuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZv
dW5kYXRpb24ub3JnPgpTaWduZWQtb2ZmLWJ5OiBMaW51cyBUb3J2YWxkcyA8dG9ydmFsZHNAbGlu
dXgtZm91bmRhdGlvbi5vcmc+CltqYzogYWRqdXN0ZWQgZHVlIHRvIG1pc3NpbmcgdXBzdHJlYW0g
Y29tbWl0IDdhODk2MDI4YWRjZl0KU2lnbmVkLW9mZi1ieTogSmlhbiBDYWkgPGppYW5jYWlAZ29v
Z2xlLmNvbT4KLS0tCiBpbmNsdWRlL2xpbnV4L2VsZmNvcmUuaCB8IDIyICsrKysrKysrKysrKysr
KysrKysrKysKIGtlcm5lbC9NYWtlZmlsZSAgICAgICAgIHwgIDEgLQoga2VybmVsL2VsZmNvcmUu
YyAgICAgICAgfCAyNiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2Vk
LCAyMiBpbnNlcnRpb25zKCspLCAyNyBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBr
ZXJuZWwvZWxmY29yZS5jCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9lbGZjb3JlLmggYi9p
bmNsdWRlL2xpbnV4L2VsZmNvcmUuaAppbmRleCA0Y2FkMGU3ODRiMjguLmI4MWY5ZTFkNzRiMCAx
MDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9lbGZjb3JlLmgKKysrIGIvaW5jbHVkZS9saW51eC9l
bGZjb3JlLmgKQEAgLTU4LDYgKzU4LDcgQEAgc3RhdGljIGlubGluZSBpbnQgZWxmX2NvcmVfY29w
eV90YXNrX3hmcHJlZ3Moc3RydWN0IHRhc2tfc3RydWN0ICp0LCBlbGZfZnB4cmVnc2UKIH0KICNl
bmRpZgogCisjaWYgZGVmaW5lZChDT05GSUdfVU0pIHx8IGRlZmluZWQoQ09ORklHX0lBNjQpCiAv
KgogICogVGhlc2UgZnVuY3Rpb25zIHBhcmFtZXRlcml6ZSBlbGZfY29yZV9kdW1wIGluIGZzL2Jp
bmZtdF9lbGYuYyB0byB3cml0ZSBvdXQKICAqIGV4dHJhIHNlZ21lbnRzIGNvbnRhaW5pbmcgdGhl
IGdhdGUgRFNPIGNvbnRlbnRzLiAgRHVtcGluZyBpdHMKQEAgLTcyLDUgKzczLDI2IEBAIGVsZl9j
b3JlX3dyaXRlX2V4dHJhX3BoZHJzKHN0cnVjdCBjb3JlZHVtcF9wYXJhbXMgKmNwcm0sIGxvZmZf
dCBvZmZzZXQpOwogZXh0ZXJuIGludAogZWxmX2NvcmVfd3JpdGVfZXh0cmFfZGF0YShzdHJ1Y3Qg
Y29yZWR1bXBfcGFyYW1zICpjcHJtKTsKIGV4dGVybiBzaXplX3QgZWxmX2NvcmVfZXh0cmFfZGF0
YV9zaXplKHZvaWQpOworI2Vsc2UKK3N0YXRpYyBpbmxpbmUgRWxmX0hhbGYgZWxmX2NvcmVfZXh0
cmFfcGhkcnModm9pZCkKK3sKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGlubGluZSBpbnQgZWxm
X2NvcmVfd3JpdGVfZXh0cmFfcGhkcnMoc3RydWN0IGNvcmVkdW1wX3BhcmFtcyAqY3BybSwgbG9m
Zl90IG9mZnNldCkKK3sKKwlyZXR1cm4gMTsKK30KKworc3RhdGljIGlubGluZSBpbnQgZWxmX2Nv
cmVfd3JpdGVfZXh0cmFfZGF0YShzdHJ1Y3QgY29yZWR1bXBfcGFyYW1zICpjcHJtKQoreworCXJl
dHVybiAxOworfQorCitzdGF0aWMgaW5saW5lIHNpemVfdCBlbGZfY29yZV9leHRyYV9kYXRhX3Np
emUodm9pZCkKK3sKKwlyZXR1cm4gMDsKK30KKyNlbmRpZgogCiAjZW5kaWYgLyogX0xJTlVYX0VM
RkNPUkVfSCAqLwpkaWZmIC0tZ2l0IGEva2VybmVsL01ha2VmaWxlIGIva2VybmVsL01ha2VmaWxl
CmluZGV4IGYyY2MwZDExOGEwYi4uNmFlZjEzMDUzYTVjIDEwMDY0NAotLS0gYS9rZXJuZWwvTWFr
ZWZpbGUKKysrIGIva2VybmVsL01ha2VmaWxlCkBAIC05Myw3ICs5Myw2IEBAIG9iai0kKENPTkZJ
R19UQVNLX0RFTEFZX0FDQ1QpICs9IGRlbGF5YWNjdC5vCiBvYmotJChDT05GSUdfVEFTS1NUQVRT
KSArPSB0YXNrc3RhdHMubyB0c2FjY3Qubwogb2JqLSQoQ09ORklHX1RSQUNFUE9JTlRTKSArPSB0
cmFjZXBvaW50Lm8KIG9iai0kKENPTkZJR19MQVRFTkNZVE9QKSArPSBsYXRlbmN5dG9wLm8KLW9i
ai0kKENPTkZJR19FTEZDT1JFKSArPSBlbGZjb3JlLm8KIG9iai0kKENPTkZJR19GVU5DVElPTl9U
UkFDRVIpICs9IHRyYWNlLwogb2JqLSQoQ09ORklHX1RSQUNJTkcpICs9IHRyYWNlLwogb2JqLSQo
Q09ORklHX1RSQUNFX0NMT0NLKSArPSB0cmFjZS8KZGlmZiAtLWdpdCBhL2tlcm5lbC9lbGZjb3Jl
LmMgYi9rZXJuZWwvZWxmY29yZS5jCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCA1N2Zi
NGRjZmY0MzQuLjAwMDAwMDAwMDAwMAotLS0gYS9rZXJuZWwvZWxmY29yZS5jCisrKyAvZGV2L251
bGwKQEAgLTEsMjYgKzAsMCBAQAotLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAK
LSNpbmNsdWRlIDxsaW51eC9lbGYuaD4KLSNpbmNsdWRlIDxsaW51eC9mcy5oPgotI2luY2x1ZGUg
PGxpbnV4L21tLmg+Ci0jaW5jbHVkZSA8bGludXgvYmluZm10cy5oPgotI2luY2x1ZGUgPGxpbnV4
L2VsZmNvcmUuaD4KLQotRWxmX0hhbGYgX193ZWFrIGVsZl9jb3JlX2V4dHJhX3BoZHJzKHZvaWQp
Ci17Ci0JcmV0dXJuIDA7Ci19Ci0KLWludCBfX3dlYWsgZWxmX2NvcmVfd3JpdGVfZXh0cmFfcGhk
cnMoc3RydWN0IGNvcmVkdW1wX3BhcmFtcyAqY3BybSwgbG9mZl90IG9mZnNldCkKLXsKLQlyZXR1
cm4gMTsKLX0KLQotaW50IF9fd2VhayBlbGZfY29yZV93cml0ZV9leHRyYV9kYXRhKHN0cnVjdCBj
b3JlZHVtcF9wYXJhbXMgKmNwcm0pCi17Ci0JcmV0dXJuIDE7Ci19Ci0KLXNpemVfdCBfX3dlYWsg
ZWxmX2NvcmVfZXh0cmFfZGF0YV9zaXplKHZvaWQpCi17Ci0JcmV0dXJuIDA7Ci19Ci0tIAoyLjMw
LjAuMjg0LmdkOThiMWRkNWVhYTctZ29vZwoK
--00000000000093f97505b95d4fc9--

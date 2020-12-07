Return-Path: <clang-built-linux+bncBCU6LCMF3IHBB4ERXD7AKGQE43BINPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C206E2D0E6A
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 11:50:25 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id t8sf9124146pfl.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 02:50:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607338224; cv=pass;
        d=google.com; s=arc-20160816;
        b=DzBwdB042o2k55sWu+MlnVRFcEH6rWuUs1a7rxXbEmp/A47twevMj+ugHTC3hPJXla
         iz/UPhP0vJP20Ngln89mGj8c5U0bo/fNqxShSY02WwpigMpiodIHvJRBBFKOo4g+bHem
         MgqkFGDWVS18s7pjk+80UTnXJYSiNgLJBf7Eo+fgEBuALAmGC989g8erJNJU0sVTpB1b
         L6LdSuD8l3VCG9DdD8uJ8khWJ8hhtq3SrM9W4m7fMsoIuKbKkZ69S3dh1PXJi3a+m5cI
         jOg+y/afyOh5nOb+h4sWzvrCAqdyNAO0IqDww4t+pSgb1J0N9qKg9MJ+PeJOIJiDKHLC
         hepQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:date:message-id
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=Pz5EGdrPpgHDDH9AfAgsI5zkqkRBrT6jOdHH5Uy9xaE=;
        b=jlqpHN0W80+lhudXf7HRgZpwONTeGF30oFnk4d/unmr+DFakrij/nGYoUkIVlsGYvC
         XnpEC0tSgEkELwY3ykPmmKsWNZXhvVn4dohT2zNuYAv7vDKVT8r2apl7zeuaESDxXYCD
         Ux0frKI8cyuDGuKYDXplueWKv6L6aGhsSu+4DdjY742IuFASbqYsBP6QdWneDsOiR84k
         WazOGNAL6jWOoWvozD1GISPpYcpxwGksNkzT7ylBHDqajHtpmrX03AQCvkpA/JvOSYpd
         RDcg15BxX8Vh/UlmIQfYzX4EvLUoQiLVMwStmQ0gzzf2I8m14lDlP3pRjaCDvBf7RzcV
         yKyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCMeN+rm;
       spf=pass (google.com: domain of 37gjoxwsjad0ztrshmzbg06flzhk.bnl@trix.bounces.google.com designates 2607:f8b0:4864:20::e45 as permitted sender) smtp.mailfrom=37gjOXwsJAD0ZtrshmZbg06flZhk.bnl@trix.bounces.google.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pz5EGdrPpgHDDH9AfAgsI5zkqkRBrT6jOdHH5Uy9xaE=;
        b=o4dS68hPhzT3mtBHemG5OUd3eeNAMs0wg6526CTiGn2cK6VVc/RtdUYijM74S4nzCl
         lp6bD78BfSqZG/BsQf+mwqI3lQxSnpgj2YZwOee9vp2sbTIUXuXb/UOd5L0Q8QdAXiFN
         Vvm6c90jsMcNguIVcAXn0pkXQq+0xQCEIYJmNJeQEm2AwCXFHpWXVEmlNW72CsSzjhaN
         R+Nj4MhgTLZf/TpygWN0oMq2TPophc0q7AsXSS2AfPQU0AFX4xiucmxR2oieb7VXWVhV
         EcFxofz9ssge6VpX1Esm+5rKM8csm89RvYY3xQ5vK7PHeOU6A5QWRGGrNflLQl+8gtP/
         kaQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pz5EGdrPpgHDDH9AfAgsI5zkqkRBrT6jOdHH5Uy9xaE=;
        b=HLIrPIhNes7KEiELp3iZXTLC+6PvXZmz50LSkKZUfXbbk/Cewi9cinUUdZBmnCd72F
         fsHR3D6apSCk1vh95xQhz4zMLp2nTCbH75e4vSeRnswx1p45jLty+uYyQkasCFm++imm
         7tW3OJW2UPHQI/Ou1C3QIfR23uEpnttrclzY+s+FQQPpS1RVy9zZMWL5U2FUe37sGm3f
         WyjilCwkj2ql66rYlTQ6OqEQuvNAkC7loCF0AujV+2K2oemfrfz+RlRFRFORvAQTA8ky
         Ef3tucr0XS1S1IBb10nYhRZbyX5/K54h7ZSt98eCFTzj3MKvVVetow7GlNQu92e70pTT
         SqzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:message-id:date
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pz5EGdrPpgHDDH9AfAgsI5zkqkRBrT6jOdHH5Uy9xaE=;
        b=P0p8FlWE+1gYyIWq2x7zgMHAQI+2JSdolfJ+QI5EYo2W8/gVAa+ISKJ9frGqtWOwlU
         mxggjedgV+rp0lcdrWuhS6meEB7H5r0t0OS8IcX0t+qBq3Twow36rLm774tUuomhk7nS
         Up9V/AlFud+G++Mi6OCluT4Zibn9tx5LYkmhjEgB702usvuNwg4a2DYQesca3V0XCWh/
         6MTkL2rZTIxv3cFAG9rMywvkvKL30UshrXU+9vRV8unQGOEkPxs7Sjxuxond8MdQweA7
         NUtoYtGSNGpVDsLgeZZsVXQhU4oGm/lQEuB9TXA4u9ja4iMhstGVHkSyFzNBJV0MXowG
         3l+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dcbsi8VBYVpoi9+lxjcEw8Tyd3V/A/g5o1MNB0uDW8SRi38Kh
	BtgriYjzkgOa+W3LAkfX0Ak=
X-Google-Smtp-Source: ABdhPJxli9NgV7rswcNeO/2hyFwGcbJ3+3Rq6KXjnI/AVH0PxHzywXG0K3wskTdHvIzsOl82UBt3Xw==
X-Received: by 2002:a17:902:ee53:b029:da:4c68:2795 with SMTP id 19-20020a170902ee53b02900da4c682795mr15335861plo.7.1607338224312;
        Mon, 07 Dec 2020 02:50:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c205:: with SMTP id 5ls7878151pll.11.gmail; Mon, 07
 Dec 2020 02:50:23 -0800 (PST)
X-Received: by 2002:a17:902:b282:b029:da:fd05:7766 with SMTP id u2-20020a170902b282b02900dafd057766mr2557404plr.52.1607338223682;
        Mon, 07 Dec 2020 02:50:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607338223; cv=none;
        d=google.com; s=arc-20160816;
        b=OEYRAH+nQKs8KQaKZyCkUVkygj+nBBIYOo2oCiz5oH6w19F5PomA3X3qZBXw4XgCt0
         BYHXw3fzIdbgoQ6ygOD5FXHa3VAP5Bue0+0p1eSTQP1QUCSXRbT8e6Oe3blgpIlwgnVW
         qTHfCH0SULrSLrBS6mR5TDdQzHUx/0quogexfFpG+3FjaR1lbixOxbeJOiytT+pZYfKl
         FVkrMyJog9eJnsLCk+U4xRR5LLeypxiqGNX+KEKAcqUjvM+4bl+DNK3XExR846D/BwXh
         btGE1AhvznPEy1PzZRghbQIwMT6dv7oWY3XfQkNSzN9q9z8Hl8fIaPZIemUfLetr3mpM
         e/ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:reply-to:mime-version
         :dkim-signature;
        bh=cRRxtW/pftXja2Ox59sRjZma8YYkR2kObhgNaAkT5Wo=;
        b=JDStOh5Sc87kCB7CtGFMJOYDjpCUSOC81ZCAZVp6l0eOQuG7VR4bL4XEm2Uysyqemd
         aT54gsikerFh+YWzUQJOBsfHJcz/7IR5CkKmrawyNGYp4HQo1S5rCbRtwJLVL1+8ewza
         /+sHQIbYZ7EUC9iDIanoyEUQOMjc3nZPTE02CKKi53KPgraeapJvtMEGQgOX9SPlqCqY
         BngVdZXGaQBeXd4M8tGPY6kDOBNCTRzjjSVILEqcTBsDTrsyTR38CoGWuMHIpbxAKKtd
         ZVi6FH1wUCnKRCleRIfQ5v1T6HEvmlklFe4LeGrD20S2ppATwfYC6aw2eAS6wfMjNltD
         7Xgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCMeN+rm;
       spf=pass (google.com: domain of 37gjoxwsjad0ztrshmzbg06flzhk.bnl@trix.bounces.google.com designates 2607:f8b0:4864:20::e45 as permitted sender) smtp.mailfrom=37gjOXwsJAD0ZtrshmZbg06flZhk.bnl@trix.bounces.google.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe45.google.com (mail-vs1-xe45.google.com. [2607:f8b0:4864:20::e45])
        by gmr-mx.google.com with ESMTPS id y13si852281pgr.2.2020.12.07.02.50.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 02:50:23 -0800 (PST)
Received-SPF: pass (google.com: domain of 37gjoxwsjad0ztrshmzbg06flzhk.bnl@trix.bounces.google.com designates 2607:f8b0:4864:20::e45 as permitted sender) client-ip=2607:f8b0:4864:20::e45;
Received: by mail-vs1-xe45.google.com with SMTP id h5so2583530vsq.15
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 02:50:23 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a67:10c2:: with SMTP id 185mt11757715vsq.31.1607338222975;
 Mon, 07 Dec 2020 02:50:22 -0800 (PST)
Reply-To: austinach17@gmail.com
X-No-Auto-Attachment: 1
Message-ID: <000000000000d0829705b5dd976c@google.com>
Date: Mon, 07 Dec 2020 10:50:23 +0000
Subject: Hi
From: austinach17@gmail.com
To: clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000d14cee05b5dd97ce"
X-Original-Sender: austinach17@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jCMeN+rm;       spf=pass
 (google.com: domain of 37gjoxwsjad0ztrshmzbg06flzhk.bnl@trix.bounces.google.com
 designates 2607:f8b0:4864:20::e45 as permitted sender) smtp.mailfrom=37gjOXwsJAD0ZtrshmZbg06flZhk.bnl@trix.bounces.google.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000d14cee05b5dd97ce
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes

I've invited you to fill out the following form:
Untitled form

To fill it out, visit:
https://docs.google.com/forms/d/e/1FAIpQLSdT3oPrR6-Hjb4Ed3q-dRbgrISxpzydkiulNR-TtWJA_mEfWA/viewform?vc=0&amp;c=0&amp;w=1&amp;flr=0&amp;usp=mail_form_link

Hello Dear,

Your e-mail address came up in a random draw conducted by  by my law firm,  
Eric Brown Law Chambers, I am contacting you to assist in repatriating the  
money left behind by my late client before it gets confiscated or declared  
unserviceable by the bank where this deposit valued at ( $5.5 Million  
Dollars  ) was lodged.

My proposition to you is to seek your consent in presenting you as the  
next-of-kin to my late client because at the point of the death of my late  
client ,He told me that i should not allow the Bank to eat his fund that i  
should look for a foreigner whom i trust that we stand as the next of kin  
to his deposit fund in the Bank  so that the Bank will transfer the fund  
into your account then If this business proposition offends your moral  
values,do accept my apology but if not, then contact me at once to indicate  
your interest for more details.

Awaiting for your immediate response,

Best regards,
Brr.Eric Brown

Google Forms: Create and analyze surveys.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/000000000000d0829705b5dd976c%40google.com.

--000000000000d14cee05b5dd97ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"font-family: Roboto,Helvetica,Arial,sans-serif; margin=
: 0; padding: 0; height: 100%; width: 100%;"><table border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" style=3D"background-color:rgb(103,58,183);" width=
=3D"100%" role=3D"presentation"><tbody><tr height=3D"64px"><td style=3D"pad=
ding: 0 24px;"><img alt=3D"Google Forms" height=3D"26px" style=3D"display: =
inline-block; margin: 0; vertical-align: middle;" width=3D"143px" src=3D"ht=
tps://www.gstatic.com/docs/forms/google_forms_logo_lockup_white_2x.png"></t=
d></tr></tbody></table><div style=3D"padding: 24px; background-color:rgb(23=
7,231,246)"><table align=3D"center" border=3D"0" cellpadding=3D"0" cellspac=
ing=3D"0" style=3D"max-width: 672px; min-width: 154px;" width=3D"100%" role=
=3D"presentation"><tbody><tr><td style=3D"font-size: 13px; line-height: 18p=
x; color: #424242; font-weight: 700">Having trouble viewing or submitting t=
his form?</td></tr><tr height=3D"8px"><td></td></tr><tr><td><table border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"><tbody><tr><td><a=
 href=3D"https://docs.google.com/forms/d/e/1FAIpQLSdT3oPrR6-Hjb4Ed3q-dRbgrI=
SxpzydkiulNR-TtWJA_mEfWA/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D0&am=
p;usp=3Dmail_form_link" style=3D"border-radius: 3px; box-sizing: border-box=
; display: inline-block; font-size: 13px; font-weight: 700; height: 40px; l=
ine-height: 40px; padding: 0 24px; text-align: center; text-decoration: non=
e; text-transform: uppercase; vertical-align: middle; color: #fff; backgrou=
nd-color: rgb(103,58,183);" target=3D"_blank" rel=3D"noopener">Fill out in =
Google Forms</a></td></tr></tbody></table></td></tr><tr height=3D"24px"><td=
></td></tr></tbody></table><div align=3D"center" style=3D"background-color:=
 #fff; border-bottom: 1px solid #e0e0e0;margin: 0 auto; max-width: 624px; m=
in-width: 154px;padding: 0 24px;"><table align=3D"center" cellpadding=3D"0"=
 cellspacing=3D"0" style=3D"background-color: #fff;" width=3D"100%" role=3D=
"presentation"><tbody><tr height=3D"24px"><td></td></tr><tr><td><span style=
=3D"display: table-cell; vertical-align: top; font-size: 13px; line-height:=
 18px; color: #424242;" dir=3D"auto">Hello Dear,<br><br>Your e-mail address=
 came up in a random draw conducted by  by my law firm, Eric Brown Law Cham=
bers, I am contacting you to assist in repatriating the money left behind b=
y my late client before it gets confiscated or declared unserviceable by th=
e bank where this deposit valued at ( $5.5 Million Dollars  ) was lodged.<b=
r><br>My proposition to you is to seek your consent in presenting you as th=
e next-of-kin to my late client because at the point of the death of my lat=
e client ,He told me that i should not allow the Bank to eat his fund that =
i should look for a foreigner whom i trust that we stand as the next of kin=
 to his deposit fund in the Bank  so that the Bank will transfer the fund i=
nto your account then If this business proposition offends your moral value=
s,do accept my apology but if not, then contact me at once to indicate your=
 interest for more details.<br><br>Awaiting for your immediate response,<br=
><br>Best regards,<br>Brr.Eric Brown</span></td></tr><tr height=3D"20px"><t=
d></tr><tr style=3D"font-size: 20px; line-height: 24px;"><td dir=3D"auto"><=
a href=3D"https://docs.google.com/forms/d/e/1FAIpQLSdT3oPrR6-Hjb4Ed3q-dRbgr=
ISxpzydkiulNR-TtWJA_mEfWA/viewform?vc=3D0&amp;c=3D0&amp;w=3D1&amp;flr=3D0&a=
mp;usp=3Dmail_form_link" style=3D"color: rgb(103,58,183); text-decoration: =
none; vertical-align: middle; font-weight: 500">Untitled form</a><div itemp=
rop=3D"action" itemscope itemtype=3D"http://schema.org/ViewAction"><meta it=
emprop=3D"url" content=3D"https://docs.google.com/forms/d/e/1FAIpQLSdT3oPrR=
6-Hjb4Ed3q-dRbgrISxpzydkiulNR-TtWJA_mEfWA/viewform?vc=3D0&amp;c=3D0&amp;w=
=3D1&amp;flr=3D0&amp;usp=3Dmail_goto_form"><meta itemprop=3D"name" content=
=3D"Fill out form"></div></td></tr><tr height=3D"24px"></tr><tr><td><div cl=
ass=3D"ss-form" style=3D""><form action=3D"https://docs.google.com/forms/u/=
0/d/e/1FAIpQLSdT3oPrR6-Hjb4Ed3q-dRbgrISxpzydkiulNR-TtWJA_mEfWA/formResponse=
" method=3D"POST" id=3D"ss-form" target=3D"_self" style=3D""><ol role=3D"li=
st" class=3D"ss-question-list" style=3D"padding-left: 0;list-style-type:non=
e;">

<div class=3D"ss-form-question errorbox-good" role=3D"listitem" style=3D"">
<div dir=3D"auto" class=3D"ss-item  ss-radio" style=3D"margin:12px 0;"><div=
 class=3D"ss-form-entry" style=3D"margin-bottom:1.5em;vertical-align:middle=
;margin-left:0;margin-top:0;max-width:100%;">
<label class=3D"ss-q-item-label" for=3D"entry_754013075" style=3D""><div cl=
ass=3D"ss-q-title" style=3D"display:block;font-weight:bold;margin-top:.83em=
;margin-bottom:.83em;">Untitled Question
</div>
<div class=3D"ss-q-help ss-secondary-text" dir=3D"auto" style=3D"display:bl=
ock;margin:.1em 0 .25em 0;color:#666;"></div></label>


<ul class=3D"ss-choices" role=3D"radiogroup" aria-label=3D"Untitled Questio=
n  " style=3D"list-style:none;padding:0;margin:.5em 0 0;"><li class=3D"ss-c=
hoice-item" style=3D"margin:0;line-height:1.3em;padding-bottom:.5em;">
<label><span class=3D"ss-choice-item-control goog-inline-block" style=3D"po=
sition:relative;display:inline-block;"><input type=3D"radio" name=3D"entry.=
1974655140" value=3D"Option 1" id=3D"group_1974655140_1" role=3D"radio" cla=
ss=3D"ss-q-radio" aria-label=3D"Option 1" style=3D""></span>
<span class=3D"ss-choice-label" style=3D"">Option 1</span>
</label></li></ul>

</div></div></div>
<input type=3D"hidden" name=3D"draftResponse" value=3D"[null,null,&quot;-86=
30908366309733509&quot;]
" style=3D"">
<input type=3D"hidden" name=3D"pageHistory" value=3D"0" style=3D"">

<input type=3D"hidden" name=3D"usp" value=3D"mail_form_submit" style=3D"">


<input type=3D"hidden" name=3D"fbzx" value=3D"-8630908366309733509" style=
=3D"">
<div class=3D"ss-send-email-receipt" style=3D"margin-bottom: 4px;" dir=3D"l=
tr"><label for=3D"emailReceipt" style=3D"display:inline;"></label></div>
<div class=3D"ss-item ss-navigate" style=3D"margin:12px 0;"><table id=3D"na=
vigation-table" style=3D""><tbody><tr><td class=3D"ss-form-entry goog-inlin=
e-block" id=3D"navigation-buttons" dir=3D"ltr" style=3D"margin-bottom:1.5em=
;vertical-align:middle;margin-left:0;margin-top:0;max-width:100%;position:r=
elative;display:inline-block;">
<input type=3D"submit" name=3D"submit" value=3D"Submit" id=3D"ss-submit" cl=
ass=3D"jfk-button jfk-button-action " style=3D"">
</td>
</tr></tbody></table></div></ol></form></div>
<div class=3D"ss-footer" style=3D""><div class=3D"ss-attribution" style=3D"=
"></div>
<div class=3D"ss-legal" style=3D""><div class=3D"disclaimer-separator" styl=
e=3D""></div>
<div class=3D"disclaimer" dir=3D"ltr" style=3D""><div class=3D"powered-by-l=
ogo" style=3D"margin-top:2em;"><span class=3D"powered-by-text" style=3D"">P=
owered by</span>
<a href=3D"https://www.google.com/forms/about/?utm_source=3Dproduct&amp;utm=
_medium=3Dforms_logo&amp;utm_campaign=3Dforms" style=3D""><div class=3D"ss-=
logo-container" style=3D""><img src=3D"https://ssl.gstatic.com/docs/forms/f=
orms_logo_2_small_dark_2x.png" height=3D"21px" width=3D"108px" alt=3D"Googl=
e Forms" style=3D""></div></a></div>
<div class=3D"ss-terms" style=3D"color:#777;font-size:11px;margin-top:1.5em=
;"><span class=3D"disclaimer-msg" style=3D"">This content is neither create=
d nor endorsed by Google.</span>
<br>
<a href=3D"https://docs.google.com/forms/u/0/d/e/1FAIpQLSdT3oPrR6-Hjb4Ed3q-=
dRbgrISxpzydkiulNR-TtWJA_mEfWA/reportabuse?source=3Dhttps://docs.google.com=
/forms/d/e/1FAIpQLSdT3oPrR6-Hjb4Ed3q-dRbgrISxpzydkiulNR-TtWJA_mEfWA/viewfor=
m?sid%3De8dc9487cd4ab3%26vc%3D0%26c%3D0%26w%3D1%26flr%3D0%26token%3D_6oBPXY=
BAAA.Yq3Sw31vf1_yALgH8Xi9Zw.s7iZiz6x0tVg4iNkl5WBdg" style=3D"">Report Abuse=
</a>
-
<a href=3D"http://www.google.com/accounts/TOS" style=3D"">Terms of Service<=
/a>
-
<a href=3D"http://www.google.com/google-d-s/terms.html" style=3D"">Addition=
al Terms</a></div></div></div></div>
</td></tr><tr height=3D"24px"></tr></tbody></table></div><table align=3D"ce=
nter" cellpadding=3D"0" cellspacing=3D"0" style=3D"max-width: 672px; min-wi=
dth: 154px;" width=3D"100%" role=3D"presentation"><tbody><tr height=3D"24px=
"><td></td></tr><tr><td><a href=3D"https://docs.google.com/forms?usp=3Dmail=
_form_link" style=3D"color: #424242; font-size: 13px;">Create your own Goog=
le Form</a></td></tr></tbody></table></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000d0829705b5dd976c%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000d0829705b5dd976c%40google.com</a>.<br />

--000000000000d14cee05b5dd97ce--

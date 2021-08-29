Return-Path: <clang-built-linux+bncBD52NTNMXUPBB3GPVOEQMGQEQT37GSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CB73FA82A
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Aug 2021 03:50:38 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id p7-20020a17090a2c4700b0018d4e028ee6sf1234112pjm.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 18:50:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630201837; cv=pass;
        d=google.com; s=arc-20160816;
        b=xZb+JP7CrGIQQ0APflNvH+j8yrr88A1e1Tsyh0DViLQI2rIzcPBbqGCBqqsa4ygtyv
         SFUiWlKUpb3wVd7Nv6yd4/DF3ao8PQmKI+uK+B4l1Nltlxz3YEaN9w/UiCh/RVAj9BiU
         vHnSskdd1Z/MlbsGM0vPYV3cIcNCnGcq4RL2MrM9VWJ+BDe8ex+x7OfhiHkWFuVFPG32
         L5KiHYkhknB0iArsMc3EmVHG5I9WTCKwbF3fbGkpsslnTu2Gpl3vNkO38LSJ0vl2jdt5
         duRsAL4EiPdZpdvDt0eaBoByseUgFfLg1yg8IXhvG75K1SLzjKNxch1X3VG35RP6c+XY
         qLWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=6D8q995rgK8HfhNfdVkto2EVYvInSiG4CrF9QPIGO0k=;
        b=RfH3mLY4P/Tuz/1rk/WE4HABNhpwH9SWXEeGKtpO+SJNUbthym5WN7jb5OlqpVScrQ
         CgFOjCP0S+vqGzwKlGKySi+WT1sAfZA2FRJnmZkTjn9ZuReRCdc/jPCEd2zstqdQ/64j
         ITL1/UbpH0Gp39VEwlyNwkMkA7oVTcXuGKG7IAZwtLDjGeORGCxQc7aGF9338bXLxHI3
         MDKYTCLeXMzSeNq13+qMNNj6IuaLRNyPhEJbzMZ0Gm1lK5FeGDVOer0DTuog+Y0syDVA
         NRzgRD9SWfZZ7A4Hvn+4xPlAJyxBzkGY+5uzqr7Ec31iZ6jifH+dJah0vUTlI6VIwtol
         pg+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 74.208.4.197 is neither permitted nor denied by best guess record for domain of philip@switchbackcompilers.com) smtp.mailfrom=philip@switchbackcompilers.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6D8q995rgK8HfhNfdVkto2EVYvInSiG4CrF9QPIGO0k=;
        b=BuPegPp/jOmbA1lvUE4vLylhCLCtlfhnrexy3Wf2xLvCedhvmX/65TgdhbjHniHyay
         xGIksEInxS0tXPZe23+sQq+E259mCnOFmRW1AtKypfeUfFC3svDr6MYxvXnohCD8g0c8
         DS9hvuWl1kTYb2OH+E6pxCChbfRN5Al2UEFc+pR6aMgHXxP3ClvTAxPqMA9tsVfbCgh6
         lN69Gcsyzx5qrpoJ+mUW49PW6zM/uG/454qBkT/jJUffjV1/hyjbUhR6mwG9vC7z67Sx
         FkeGNhJhqvrichXWz7OaLnUlMd5dMWv6iy2tWkDkxmmHK3CVkRvFPp+sFkeCsCER73eM
         mSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6D8q995rgK8HfhNfdVkto2EVYvInSiG4CrF9QPIGO0k=;
        b=eQBgJntNNCZEY6Y9R0te45h21KbmS6WD4L7bEyUG60X62P7mxiO1TAU/rewc6rsW+m
         DXzk1CIqMEVMXZLcnqCP6MxAGYEHHqo54fqHtK7Q9qIKqvjgxjmBFCA4R3ucwbJjQgAn
         j7vGbkd5/vASqccpcBGZVtAhsJfS2ID3cPgQh7lsK3VZ4v11d1ByQ77ShWx7HaSDI9rv
         NBcR9tkpr67EuJD6V1jhK2mZqdOZDzgucE2BlP0Ji/kOGgvLFNeVmB76nRa8iM0I+pSy
         3+pLJXtdUoVmGgAlhujY9t7L03/cfNqmdFmkd3Ad0sNI+hMrDCvnl80Ymv8rsq3AI+g2
         t5ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KzaSudc1wmzYYRyFkmB7UoZYyE9DyANK44+hT7l3s1TpJ+8lj
	ohVjlvSOq9gHgxoYgGAgBs0=
X-Google-Smtp-Source: ABdhPJw/CFgVWFiQbrrv0rc2dgaoMw/Hpmm4tOCf0U6OWGBtAV1mahQwzKs4nY/RfN4gcbwCm6h6UQ==
X-Received: by 2002:a17:90a:a78d:: with SMTP id f13mr18834519pjq.206.1630201836973;
        Sat, 28 Aug 2021 18:50:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f92:: with SMTP id t140ls5095227pgb.8.gmail; Sat, 28
 Aug 2021 18:50:36 -0700 (PDT)
X-Received: by 2002:a63:1a64:: with SMTP id a36mr14909446pgm.225.1630201836343;
        Sat, 28 Aug 2021 18:50:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630201836; cv=none;
        d=google.com; s=arc-20160816;
        b=Qn9JBkAfVLHz8TZLNhtlm2fAt+KCosVzugb7prH/pQh9dH9YNWCyybR2Ir4CCDMH68
         Bud3e52lc8LHnMgunzdF7ktuPjsS5XHnAztqnQefptDf1EUZyGFSg6v5v0Nm1BiDslS+
         YMu7wWDpqxBLpxJzdWam/saqzK82YLoJe59kFrsLVVUv7AGBUCo2bEBplI75K94+3mDz
         uTMCR0TIR1sxjwHKQMzbLh7Zw5VJFC/wVgTwMxyn7P3pLvpMQTCvXbV7BLdyzsvE7JX4
         vmcncgykRAGUxljAtc9TBk4zc8nlxvmSzaJZOz1cWWu8yLSCcgftbZdqYt0L3O6/XKHr
         lVOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=gWDUp2hxD6s65YrvtY8QVJpmngo2ijdfWhQRATJZOJ8=;
        b=zEiWIbbRYMjckGvL7RoTE/uAUg3dLPH/CO2AxSep+ZddbHIQjmfaHIwD6H6aYNA5HU
         anwTtiQ1/BJ2DOM9smwQDEN2LhVztJEH5ZaFmz11bBN4RBBKh4IeUMxQ0DomjgPs3PeP
         MaVMlAspPdMa/tJAx/M7C44MMGrSM9Tx28oXDY1uxUhIpU6hQ1IMBf57oHNVXFUv7vgC
         IizER1GO1AwDS2cPgX+s1gQrYrbggSqkfvWGTIxYj4gTz6wVl0tH/hNiXcq990GxbgVX
         spkNMFLiUeCr3BQFMh0vxuaymXSmdE6QmSvXouvi2f5/9oJjRltJXUOr0Rc36ioJKH0z
         ju3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 74.208.4.197 is neither permitted nor denied by best guess record for domain of philip@switchbackcompilers.com) smtp.mailfrom=philip@switchbackcompilers.com
Received: from mout.perfora.net (mout.perfora.net. [74.208.4.197])
        by gmr-mx.google.com with ESMTPS id c186si573031pfc.5.2021.08.28.18.50.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Aug 2021 18:50:36 -0700 (PDT)
Received-SPF: neutral (google.com: 74.208.4.197 is neither permitted nor denied by best guess record for domain of philip@switchbackcompilers.com) client-ip=74.208.4.197;
Received: from [192.168.2.11] ([70.187.227.219]) by mrelay.perfora.net
 (mreueus002 [74.208.5.2]) with ESMTPSA (Nemesis) id 0LyWpM-1n6sMb2w0U-015v24;
 Sun, 29 Aug 2021 03:50:31 +0200
Subject: Re: Nasty clang loop unrolling..
To: Craig Topper <craig.topper@sifive.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Nathan Chancellor <nathan@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev
References: <CAHk-=wiNHx_GpjoWt9VMffKunZZy5MaTe3pM+cpBgE7OyyrX5Q@mail.gmail.com>
 <CAKwvOdnbiLk4N6Qqdz=RT9nsjYQv41XnXK71azYte7h0JqoohQ@mail.gmail.com>
 <37453471-1498-4C1C-8022-93697D8C2DD4@sifive.com>
From: Philip Reames <philip@switchbackcompilers.com>
Message-ID: <9e517b5d-f0e5-240a-2e3c-5cc24eda601e@switchbackcompilers.com>
Date: Sat, 28 Aug 2021 18:50:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <37453471-1498-4C1C-8022-93697D8C2DD4@sifive.com>
Content-Type: multipart/alternative;
 boundary="------------10F690C6F9A92818FFB4484A"
Content-Language: en-US
X-Provags-ID: V03:K1:9+2gjf0rf4TA8Gw5d8EZ/3mWeR7RY8VFqVof+q/3vOly07TlXBw
 k21wNc5hyFZ6Wz+yEKMbMauUCEP/+U6wyKnlOY5Oj24L8it6kNTmroGjWWy1B0pRAEUJXn2
 XEQ8htn+R5jJLAcvrG4OioE/MVxVKffq0Jexhw6ZVmIf26scUXVC+iGM7CG7q/ZMm/dwVra
 kVuaGWCeaORkVrLCFm+uA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ftCqHXVxVkg=:XUjpQYkWRvHdkq1MoBhGUQ
 FjIO4p4p7ZPtXJ4Xe+uHVzqsXz/xdFuP/k3V/6B40rDkW4VpeLBnX94acOKQDrz6zSrQ7Q0dh
 ESqk6FdV/YXfy782zpvcxTC23yvXl9kXJ9++2PyU5a/4f7+sJVXK9n/7Hng6os+5NtybPRWVW
 2ndI7R0ze6BwtyM2/taQlTnkA659RpRSRVCK1vSjqX4omeBUP6/MvZGTsXVFnH8U9SfLbUm1t
 Kuq+lZ3C0v8iLy39uVAzM29+s4vxbgKdy02t59brgyDTZ4HMsvlVJvrAoO8UnNli+mma3P0kL
 dCLIY82BT/F0RvExImtL2q5ib8HSvSVUJVhX5x0fuP6FpYmtugPHavLYT9G+DLrky6JL1fEvG
 yZQ5OGMVg4vjKOmgIABoXZGvcf4B2vPDAESIO0Hg337CP7JGTYEafmRrGzIJXexSLkH5wk4u3
 YG1bplnwVM1iuhAe8d25mG4oqjJCAg99dicSUCkIrevXhtyRGDti2dl+ZVdrHGGqgi/wFOoBp
 F4Hmrj8FkZSC3yBSHng1//0/0latsNXJ6QBhKyhI2pfHZwKhyrPnW2afX9jvHKJ0XHJObII0T
 grABWA/wg9C3nbnNyQNkDKtwG2vk6bO1sSkhcREqw1/g+VdGO+ebpYPMKs2Kb6EqeuNTFdGBe
 i/SC3GbaqDWUQ7/zMiA/pmupyPHRKdGWAax3wkE1FEuAAPpmnLw7iEuZu5TQDwNfyKtXAIawy
 fE4eq7KrFT6LRt6gqqS13t3NsXY9tYkMb2tQABX1tdI9sDQ4kfONiAzj4xk=
X-Original-Sender: philip@switchbackcompilers.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 74.208.4.197 is neither permitted nor denied by best guess
 record for domain of philip@switchbackcompilers.com) smtp.mailfrom=philip@switchbackcompilers.com
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

This is a multi-part message in MIME format.
--------------10F690C6F9A92818FFB4484A
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: base64

SGVyZSdzIHRoZSBJUiByZXN1bHRpbmcgdGhlIGdlbmVyaWMgaW1wbGVtZW50YXRpb24gZnJvbSBs
aWIvc3RyaW5nLmMuDQoNCiQgY2xhbmcgLU8yIC1lbWl0LWxsdm0gc3RybmNweS5jIC1jDQojIFRo
aXMgaGFwcGVucyB0byBiZSBjbGFuZzEwLCBidXQgY2hlY2sgVG9UIHJldHVybnMgYSBzaW1pbGFy
IG91dHB1dA0KJCAuL29wdCBzdHJuY3B5LmJjIC1TDQo7IE1vZHVsZUlEID0gJ3N0cm5jcHkuYmMn
DQpzb3VyY2VfZmlsZW5hbWUgPSAic3RybmNweS5jIg0KdGFyZ2V0IGRhdGFsYXlvdXQgPSANCiJl
LW06ZS1wMjcwOjMyOjMyLXAyNzE6MzI6MzItcDI3Mjo2NDo2NC1pNjQ6NjQtZjgwOjEyOC1uODox
NjozMjo2NC1TMTI4Ig0KdGFyZ2V0IHRyaXBsZSA9ICJ4ODZfNjQtcGMtbGludXgtZ251Ig0KDQo7
IEZ1bmN0aW9uIEF0dHJzOiBub2ZyZWUgbm9yZWN1cnNlIG5vdW53aW5kIHV3dGFibGUNCmRlZmlu
ZSBkc29fbG9jYWwgaTgqIEBmb28oaTgqIHJldHVybmVkICUwLCBpOCogbm9jYXB0dXJlIHJlYWRv
bmx5ICUxLCANCmk2NCAlMikgbG9jYWxfdW5uYW1lZF9hZGRyICMwIHsNCiDCoCAlNCA9IGljbXAg
ZXEgaTY0ICUyLCAwDQogwqAgYnIgaTEgJTQsIGxhYmVsICU1MywgbGFiZWwgJTUNCg0KNTrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDsgcHJlZHMgPSAlMw0KIMKgICU2ID0g
YWRkIGk2NCAlMiwgLTENCiDCoCAlNyA9IGFuZCBpNjQgJTIsIDMNCiDCoCAlOCA9IGljbXAgZXEg
aTY0ICU3LCAwDQogwqAgYnIgaTEgJTgsIGxhYmVsICUyMiwgbGFiZWwgJTkNCg0KOTrCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDsgcHJlZHMgPSAlNSwgJTkNCiDCoCAlMTAg
PSBwaGkgaTgqIFsgJTE4LCAlOSBdLCBbICUwLCAlNSBdDQogwqAgJTExID0gcGhpIGk2NCBbICUx
OSwgJTkgXSwgWyAlMiwgJTUgXQ0KIMKgICUxMiA9IHBoaSBpOCogWyAlMTcsICU5IF0sIFsgJTEs
ICU1IF0NCiDCoCAlMTMgPSBwaGkgaTY0IFsgJTIwLCAlOSBdLCBbICU3LCAlNSBdDQogwqAgJTE0
ID0gbG9hZCBpOCwgaTgqICUxMiwgYWxpZ24gMSwgIXRiYWEgITINCiDCoCBzdG9yZSBpOCAlMTQs
IGk4KiAlMTAsIGFsaWduIDEsICF0YmFhICEyDQogwqAgJTE1ID0gaWNtcCBlcSBpOCAlMTQsIDAN
CiDCoCAlMTYgPSBnZXRlbGVtZW50cHRyIGluYm91bmRzIGk4LCBpOCogJTEyLCBpNjQgMQ0KIMKg
ICUxNyA9IHNlbGVjdCBpMSAlMTUsIGk4KiAlMTIsIGk4KiAlMTYNCiDCoCAlMTggPSBnZXRlbGVt
ZW50cHRyIGluYm91bmRzIGk4LCBpOCogJTEwLCBpNjQgMQ0KIMKgICUxOSA9IGFkZCBuc3cgaTY0
ICUxMSwgLTENCiDCoCAlMjAgPSBhZGQgaTY0ICUxMywgLTENCiDCoCAlMjEgPSBpY21wIGVxIGk2
NCAlMjAsIDANCiDCoCBiciBpMSAlMjEsIGxhYmVsICUyMiwgbGFiZWwgJTksICFsbHZtLmxvb3Ag
ITUNCg0KMjI6wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgOyBwcmVkcyA9ICU5
LCAlNQ0KIMKgICUyMyA9IHBoaSBpOCogWyAlMCwgJTUgXSwgWyAlMTgsICU5IF0NCiDCoCAlMjQg
PSBwaGkgaTY0IFsgJTIsICU1IF0sIFsgJTE5LCAlOSBdDQogwqAgJTI1ID0gcGhpIGk4KiBbICUx
LCAlNSBdLCBbICUxNywgJTkgXQ0KIMKgICUyNiA9IGljbXAgdWx0IGk2NCAlNiwgMw0KIMKgIGJy
IGkxICUyNiwgbGFiZWwgJTUzLCBsYWJlbCAlMjcNCg0KMjc6wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgOyBwcmVkcyA9ICUyMiwgJTI3DQogwqAgJTI4ID0gcGhpIGk4KiBbICU1
MCwgJTI3IF0sIFsgJTIzLCAlMjIgXQ0KIMKgICUyOSA9IHBoaSBpNjQgWyAlNTEsICUyNyBdLCBb
ICUyNCwgJTIyIF0NCiDCoCAlMzAgPSBwaGkgaTgqIFsgJTQ5LCAlMjcgXSwgWyAlMjUsICUyMiBd
DQogwqAgJTMxID0gbG9hZCBpOCwgaTgqICUzMCwgYWxpZ24gMSwgIXRiYWEgITINCiDCoCBzdG9y
ZSBpOCAlMzEsIGk4KiAlMjgsIGFsaWduIDEsICF0YmFhICEyDQogwqAgJTMyID0gaWNtcCBlcSBp
OCAlMzEsIDANCiDCoCAlMzMgPSBnZXRlbGVtZW50cHRyIGluYm91bmRzIGk4LCBpOCogJTMwLCBp
NjQgMQ0KIMKgICUzNCA9IHNlbGVjdCBpMSAlMzIsIGk4KiAlMzAsIGk4KiAlMzMNCiDCoCAlMzUg
PSBnZXRlbGVtZW50cHRyIGluYm91bmRzIGk4LCBpOCogJTI4LCBpNjQgMQ0KIMKgICUzNiA9IGxv
YWQgaTgsIGk4KiAlMzQsIGFsaWduIDEsICF0YmFhICEyDQogwqAgc3RvcmUgaTggJTM2LCBpOCog
JTM1LCBhbGlnbiAxLCAhdGJhYSAhMg0KIMKgICUzNyA9IGljbXAgZXEgaTggJTM2LCAwDQogwqAg
JTM4ID0gZ2V0ZWxlbWVudHB0ciBpbmJvdW5kcyBpOCwgaTgqICUzNCwgaTY0IDENCiDCoCAlMzkg
PSBzZWxlY3QgaTEgJTM3LCBpOCogJTM0LCBpOCogJTM4DQogwqAgJTQwID0gZ2V0ZWxlbWVudHB0
ciBpbmJvdW5kcyBpOCwgaTgqICUyOCwgaTY0IDINCiDCoCAlNDEgPSBsb2FkIGk4LCBpOCogJTM5
LCBhbGlnbiAxLCAhdGJhYSAhMg0KIMKgIHN0b3JlIGk4ICU0MSwgaTgqICU0MCwgYWxpZ24gMSwg
IXRiYWEgITINCiDCoCAlNDIgPSBpY21wIGVxIGk4ICU0MSwgMA0KIMKgICU0MyA9IGdldGVsZW1l
bnRwdHIgaW5ib3VuZHMgaTgsIGk4KiAlMzksIGk2NCAxDQogwqAgJTQ0ID0gc2VsZWN0IGkxICU0
MiwgaTgqICUzOSwgaTgqICU0Mw0KIMKgICU0NSA9IGdldGVsZW1lbnRwdHIgaW5ib3VuZHMgaTgs
IGk4KiAlMjgsIGk2NCAzDQogwqAgJTQ2ID0gbG9hZCBpOCwgaTgqICU0NCwgYWxpZ24gMSwgIXRi
YWEgITINCiDCoCBzdG9yZSBpOCAlNDYsIGk4KiAlNDUsIGFsaWduIDEsICF0YmFhICEyDQogwqAg
JTQ3ID0gaWNtcCBlcSBpOCAlNDYsIDANCiDCoCAlNDggPSBnZXRlbGVtZW50cHRyIGluYm91bmRz
IGk4LCBpOCogJTQ0LCBpNjQgMQ0KIMKgICU0OSA9IHNlbGVjdCBpMSAlNDcsIGk4KiAlNDQsIGk4
KiAlNDgNCiDCoCAlNTAgPSBnZXRlbGVtZW50cHRyIGluYm91bmRzIGk4LCBpOCogJTI4LCBpNjQg
NA0KIMKgICU1MSA9IGFkZCBuc3cgaTY0ICUyOSwgLTQNCiDCoCAlNTIgPSBpY21wIGVxIGk2NCAl
NTEsIDANCiDCoCBiciBpMSAlNTIsIGxhYmVsICU1MywgbGFiZWwgJTI3DQoNCjUzOsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDsgcHJlZHMgPSAlMjIsICUyNywgJTMNCiDCoCBy
ZXQgaTgqICUwDQp9DQoNCmF0dHJpYnV0ZXMgIzAgPSB7IG5vZnJlZSBub3JlY3Vyc2Ugbm91bndp
bmQgdXd0YWJsZSANCiJjb3JyZWN0bHktcm91bmRlZC1kaXZpZGUtc3FydC1mcC1tYXRoIj0iZmFs
c2UiIA0KImRpc2FibGUtdGFpbC1jYWxscyI9ImZhbHNlIiAiZnJhbWUtcG9pbnRlciI9Im5vbmUi
IA0KImxlc3MtcHJlY2lzZS1mcG1hZCI9ImZhbHNlIiAibWluLWxlZ2FsLXZlY3Rvci13aWR0aCI9
IjAiIA0KIm5vLWluZnMtZnAtbWF0aCI9ImZhbHNlIiAibm8tanVtcC10YWJsZXMiPSJmYWxzZSIg
DQoibm8tbmFucy1mcC1tYXRoIj0iZmFsc2UiICJuby1zaWduZWQtemVyb3MtZnAtbWF0aCI9ImZh
bHNlIiANCiJuby10cmFwcGluZy1tYXRoIj0iZmFsc2UiICJzdGFjay1wcm90ZWN0b3ItYnVmZmVy
LXNpemUiPSI4IiANCiJ0YXJnZXQtY3B1Ij0ieDg2LTY0IiANCiJ0YXJnZXQtZmVhdHVyZXMiPSIr
Y3g4LCtmeHNyLCttbXgsK3NzZSwrc3NlMiwreDg3IiANCiJ1bnNhZmUtZnAtbWF0aCI9ImZhbHNl
IiAidXNlLXNvZnQtZmxvYXQiPSJmYWxzZSIgfQ0KDQohbGx2bS5tb2R1bGUuZmxhZ3MgPSAheyEw
fQ0KIWxsdm0uaWRlbnQgPSAheyExfQ0KDQohMCA9ICF7aTMyIDEsICEid2NoYXJfc2l6ZSIsIGkz
MiA0fQ0KITEgPSAheyEiY2xhbmcgdmVyc2lvbiAxMC4wLjAtNHVidW50dTEgIn0NCiEyID0gIXsh
MywgITMsIGk2NCAwfQ0KITMgPSAheyEib21uaXBvdGVudCBjaGFyIiwgITQsIGk2NCAwfQ0KITQg
PSAheyEiU2ltcGxlIEMvQysrIFRCQUEifQ0KITUgPSBkaXN0aW5jdCAheyE1LCAhNn0NCiE2ID0g
IXshImxsdm0ubG9vcC51bnJvbGwuZGlzYWJsZSJ9DQoNClRvIG1lLCB0aGUgbW9zdCBpbnRlcmVz
dGluZyBwaWVjZSBvZiB0aGlzIGlzIG5vdCB0aGF0IHdlIHVucm9sbGVkIC0gaXQgDQppcyB0aGUg
bG93ZXJpbmcgb2YgdGhlIHNlbGVjdCAoZS5nLiB0aGUgYWRkcmVzcyBtYW5pcHVsYXRpb24pLg0K
DQpkZWZpbmUgaTgqIEB0ZXN0KGk4KiAlYmFzZSwgaTggJWFyZykgew0KIMKgICVjbXAgPSBpY21w
IGVxIGk4ICVhcmcsIDANCiDCoCAlZ2VwID0gZ2V0ZWxlbWVudHB0ciBpbmJvdW5kcyBpOCwgaTgq
ICViYXNlLCBpNjQgMQ0KIMKgICVyZXQgPSBzZWxlY3QgaTEgJWNtcCwgaTgqICViYXNlLCBpOCog
JWdlcA0KIMKgIHJldCBpOCogJXJldA0KfQ0KDQogwqDCoMKgIGxlYXHCoMKgwqAgMSglcmRpKSwg
JXJheA0KIMKgwqDCoCB0ZXN0YsKgwqDCoCAlc2lsLCAlc2lsDQogwqDCoMKgIGNtb3ZlccKgwqDC
oCAlcmRpLCAlcmF4DQogwqDCoMKgICMgbm8gaWRlYSB3aHkgdGhpcyBpcyBhIGNtb3YgaW4gdGhl
IHJlZHVjZWQgZXhhbXBsZSwgYW5kIGEgYnJhbmNoIA0KaW4gdGhlIHVucmVkdWNlZCBvbmUNCg0K
VmVyc3VzIGFuIGFsdGVybmF0aXZlIG9mOg0KDQpkZWZpbmUgaTgqIEBoYW5kb3B0KGk4KiAlYmFz
ZSwgaTggJWFyZykgew0KIMKgICVjbXAgPSBpY21wIG5lIGk4ICVhcmcsIDANCiDCoCAlY21wLnpl
eHQgPSB6ZXh0IGkxICVjbXAgdG8gaTY0DQogwqAgJXJldCA9IGdldGVsZW1lbnRwdHIgaW5ib3Vu
ZHMgaTgsIGk4KiAlYmFzZSwgaTY0ICVjbXAuemV4dA0KIMKgIHJldCBpOCogJXJldA0KfQ0KDQog
wqDCoMKgIG1vdnHCoMKgwqAgJXJkaSwgJXJheA0KIMKgwqDCoCBjbXBiwqDCoMKgICQxLCAlc2ls
DQogwqDCoMKgIHNiYnHCoMKgwqAgJC0xLCAlcmF4DQoNCklmIEkgaGFuZCB0d2VhayB0aGUgSVIg
dG8gdXNlIHRoZSBhbHRlcm5hdGUgcGF0dGVybiwgSSBnZXQgb3V0cHV0IG9mOg0KDQogwqDCoMKg
IG1vdnHCoMKgwqAgJXJkaSwgJXJheA0KIMKgwqDCoCB0ZXN0ccKgwqDCoCAlcmR4LCAlcmR4DQog
wqDCoMKgIGplwqDCoMKgIC5MQkIwXzkNCiMgJWJiLjE6wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIyAlYmIzDQogwqDCoMKgIGxl
YXHCoMKgwqAgLTEoJXJkeCksICVyOA0KIMKgwqDCoCBtb3ZxwqDCoMKgICVyZHgsICVyOQ0KIMKg
wqDCoCBhbmRxwqDCoMKgICQzLCAlcjkNCiDCoMKgwqAgamXCoMKgwqAgLkxCQjBfMg0KIyAlYmIu
MzrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAjICViYjcucHJlaGVhZGVyDQogwqDCoMKgIHhvcmzCoMKgwqAgJWVkaSwgJWVkaQ0K
IMKgwqDCoCAucDJhbGlnbsKgwqDCoCA0LCAweDkwDQouTEJCMF80OsKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICMgJWJiNw0KIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAjID0+VGhpcyBJbm5lciBMb29wIEhlYWRlcjogRGVwdGg9MQ0K
IMKgwqDCoCBtb3Z6YmzCoMKgwqAgKCVyc2kpLCAlZWN4DQogwqDCoMKgIG1vdmLCoMKgwqAgJWNs
LCAoJXJheCwlcmRpKQ0KIMKgwqDCoCBjbXBiwqDCoMKgICQxLCAlY2wNCiDCoMKgwqAgc2JiccKg
wqDCoCAkLTEsICVyc2kNCiDCoMKgwqAgYWRkccKgwqDCoCAkMSwgJXJkaQ0KIMKgwqDCoCBjbXBx
wqDCoMKgICVyZGksICVyOQ0KIMKgwqDCoCBqbmXCoMKgwqAgLkxCQjBfNA0KIyAlYmIuNTrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAjICViYjIwLmxvb3BleGl0DQogwqDCoMKgIGxlYXHCoMKgwqAgKCVyYXgsJXJkaSksICVyOQ0K
IMKgwqDCoCBzdWJxwqDCoMKgICVyZGksICVyZHgNCiDCoMKgwqAgY21wccKgwqDCoCAkMywgJXI4
DQogwqDCoMKgIGphZcKgwqDCoCAuTEJCMF83DQogwqDCoMKgIGptcMKgwqDCoCAuTEJCMF85DQou
TEJCMF8yOg0KIMKgwqDCoCBtb3ZxwqDCoMKgICVyYXgsICVyOQ0KIMKgwqDCoCBjbXBxwqDCoMKg
ICQzLCAlcjgNCiDCoMKgwqAgamLCoMKgwqAgLkxCQjBfOQ0KLkxCQjBfNzrCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjICViYjI1
LnByZWhlYWRlcg0KIMKgwqDCoCB4b3JswqDCoMKgICVlZGksICVlZGkNCiDCoMKgwqAgLnAyYWxp
Z27CoMKgwqAgNCwgMHg5MA0KLkxCQjBfODrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjICViYjI1DQogwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICMgPT5UaGlzIElubmVyIExvb3AgSGVhZGVyOiBEZXB0aD0xDQogwqDCoMKgIG1vdnpi
bMKgwqDCoCAoJXJzaSksICVlY3gNCiDCoMKgwqAgbW92YsKgwqDCoCAlY2wsICglcjksJXJkaSkN
CiDCoMKgwqAgY21wYsKgwqDCoCAkMSwgJWNsDQogwqDCoMKgIHNiYnHCoMKgwqAgJC0xLCAlcnNp
DQogwqDCoMKgIG1vdnpibMKgwqDCoCAoJXJzaSksICVlY3gNCiDCoMKgwqAgbW92YsKgwqDCoCAl
Y2wsIDEoJXI5LCVyZGkpDQogwqDCoMKgIGNtcGLCoMKgwqAgJDEsICVjbA0KIMKgwqDCoCBzYmJx
wqDCoMKgICQtMSwgJXJzaQ0KIMKgwqDCoCBtb3Z6YmzCoMKgwqAgKCVyc2kpLCAlZWN4DQogwqDC
oMKgIGNtcGLCoMKgwqAgJDEsICVjbA0KIMKgwqDCoCBzYmJxwqDCoMKgICQtMSwgJXJzaQ0KIMKg
wqDCoCBtb3ZiwqDCoMKgICVjbCwgMiglcjksJXJkaSkNCiDCoMKgwqAgbW92emJswqDCoMKgICgl
cnNpKSwgJWVjeA0KIMKgwqDCoCBtb3ZiwqDCoMKgICVjbCwgMyglcjksJXJkaSkNCiDCoMKgwqAg
Y21wYsKgwqDCoCAkMSwgJWNsDQogwqDCoMKgIHNiYnHCoMKgwqAgJC0xLCAlcnNpDQogwqDCoMKg
IGFkZHHCoMKgwqAgJDQsICVyZGkNCiDCoMKgwqAgY21wccKgwqDCoCAlcmRpLCAlcmR4DQogwqDC
oMKgIGpuZcKgwqDCoCAuTEJCMF84DQouTEJCMF85OsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICMgJWJiNTENCiDCoMKgwqAgcmV0
cQ0KDQpUaGF0J3MgYXQgbGVhc3Qgc29tZXdoYXQgYmV0dGVyLg0KDQpQaGlsaXANCg0KT24gOC8y
OC8yMSA2OjAwIFBNLCBDcmFpZyBUb3BwZXIgd3JvdGU6DQo+IFRoZXJlIGlzIOKAnC1tbGx2bSAt
dW5yb2xsLXJ1bnRpbWU9ZmFsc2XigJ0gdG8gZGlzYWJsZSB1bnJvbGxpbmcgb2YgbG9vcHMgDQo+
IHdpdGggcnVudGltZSB0cmlwIGNvdW50LiBUaGVyZSBhcmUgYSBidW5jaCBvZiBvdGhlciBrbm9i
cyBhdCB0aGUgdG9wIA0KPiBvZiBsbHZtL2xpYi9UcmFuc2Zvcm1zL1NjYWxhci9Mb29wVW5yb2xs
UGFzcy5jcHAuIEnigJltIG5vdCB2ZXJ5IA0KPiBmYW1pbGlhciB3aXRoIHRoZW0gbXlzZWxmLg0K
Pg0KPj4gT24gQXVnIDI4LCAyMDIxLCBhdCAxOjI5IFBNLCBOaWNrIERlc2F1bG5pZXJzIA0KPj4g
PG5kZXNhdWxuaWVyc0Bnb29nbGUuY29tIDxtYWlsdG86bmRlc2F1bG5pZXJzQGdvb2dsZS5jb20+
PiB3cm90ZToNCj4+DQo+PiAoV2UncmUgbW92aW5nIGZyb20gY2xhbmctYnVpbHQtbGludXhAZ29v
Z2xlZ3JvdXBzLmNvbSANCj4+IDxtYWlsdG86Y2xhbmctYnVpbHQtbGludXhAZ29vZ2xlZ3JvdXBz
LmNvbT4gdG8NCj4+IGxsdm1AbGlzdHMubGludXguZGV2IDxtYWlsdG86bGx2bUBsaXN0cy5saW51
eC5kZXY+OyBzb3JyeSBmb3IgdGhlIA0KPj4gY2h1cm4sIGJ1dCB3ZSB0aGluayB0aGlzIHdpbGwg
bWFrZQ0KPj4gZm9yIG1vcmUgYWNjZXNzaWJsZSBhcmNoaXZhbCBhbmQgYWNjZXNzIGZyb20gbG9y
ZS5rZXJuZWwub3JnIA0KPj4gPGh0dHA6Ly9sb3JlLmtlcm5lbC5vcmc+KQ0KPj4NCj4+IE9uIFNh
dCwgQXVnIDI4LCAyMDIxIGF0IDExOjI5IEFNIExpbnVzIFRvcnZhbGRzDQo+PiA8dG9ydmFsZHNA
bGludXgtZm91bmRhdGlvbi5vcmcgDQo+PiA8bWFpbHRvOnRvcnZhbGRzQGxpbnV4LWZvdW5kYXRp
b24ub3JnPj4gd3JvdGU6DQo+Pj4NCj4+PiBTbyBpdCB0dXJucyBvdXQgdGhhdCBzMzkwIGhhZCBh
IGJ1ZyBkdWUgdG8gaXRzIG93biBwcml2YXRlICdzdHJuY3B5KCknDQo+Pj4gYmVpbmcgYnJva2Vu
IGFuZCBub3QgZG9pbmcgdGhlIGluc2FuZSB0aGluZyB0aGF0IHN0cm5jcHkoKSBpcyBkZWZpbmVk
DQo+Pj4gdG8gZG8uDQo+Pg0KPj4gTGlrZSBjb250aW51aW5nIHRvIHplcm8gdGhlIHJlc3Qgb2Yg
dGhlIGJ1ZmZlciB1cCB0byBuPw0KPj4NCj4+Pg0KPj4+IFdoaWNoIGlzIGZpbmUgLSBJIHVuZGVy
c3RhbmQgZXhhY3RseSBob3cgdGhhdCBoYXBwZW5zLCBhbmQgc3RybmNweSgpDQo+Pj4gaXMgb25l
IG9mIG15IGxlYXN0IGZhdm9yaXRlIGZ1bmN0aW9ucy4NCj4+Pg0KPj4+IEFueXdheSwgSSBzdWdn
ZXN0ZWQgdGhhdCBzMzkwIGp1c3QgdXNlIHRoZSBnZW5lcmljIGZ1bmN0aW9uIHdlIGhhdmUsDQo+
Pj4gaW5zdGVhZCBvZiBpbXBsZW1lbnRpbmcgaXRzIG93biB2ZXJzaW9uLCBiZWNhdXNlIG5vYm9k
eSByZWFsbHkgY2FyZXMsDQo+Pj4gYW5kIHRoZSBnZW5lcmljIGZ1bmN0aW9uIGlzIHNtYWxsIGFu
ZCBzaW1wbGUgYW5kICJnb29kIGVub3VnaCIuIFNlZQ0KPj4+DQo+Pj4gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGttbC9DQUhrLT13amhLTkJfMWE2d2pqUGgyUHZNcnRqVnM9RGdHWTV1TTJqcTNX
QkJhWU15R1FAbWFpbC5nbWFpbC5jb20vIA0KPj4+IDxodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sL0NBSGstPXdqaEtOQl8xYTZ3ampQaDJQdk1ydGpWcz1EZ0dZNXVNMmpxM1dCQmFZTXlHUUBt
YWlsLmdtYWlsLmNvbS8+DQo+Pj4NCj4+PiBmb3IgZGV0YWlscywgYWx0aG91Z2ggdGhleSBkb24n
dCByZWFsbHkgbWF0dGVyIGZvciB0aGlzIGVtYWlsLg0KPj4+DQo+Pj4gV2hhdCBtYXR0ZXJzIGZv
ciB0aGlzIGVtYWlsIGlzIHRoYXQgd3JpdGluZyB0aGF0IHRoaW5nIG1hZGUgbWUgZ28gIm9rLA0K
Pj4+IGp1c3QgaG93IGdvb2QgZG9lcyB0aGF0IGdlbmVyaWMgdmVyc2lvbiBsb29rLCBjb21wYXJl
ZCB0byB0aGUgb2xkDQo+Pj4gbGVnYWN5IDMyLWJpdCBoaXN0b3JpY2FsIHZlcnNpb24gdGhhdCB1
c2VzIHRoZSB4ODYgc3RyaW5nIGluc3RydWN0aW9ucw0KPj4+IGp1c3QgYmVjYXVzZSBpdCBsaXRl
cmFsbHkgZ29lcyBhbGwgdGhlIHdheSBiYWNrIHRvIG15IGxlYXJuaW5nIHRoZQ0KPj4+IGkzODYg
YW5kIGxlYXJuaW5nIGdjYyBpbmxpbmUgYXNtIi4NCj4+Pg0KPj4+IEJlY2F1c2UgeWVzLCB0aGF0
IHJvdXRpbmUgKmxpdGVyYWxseSogZXhpc3RzIGluIHRoYXQgZXhhY3QgZm9ybSBpbg0KPj4+IGxp
bnV4LTAuMDEgLSBpdCdzIG1vdmVkLCBhbmQgaXQgaGFzIGxvc3QgYSAiY2xkIiBpbnN0cnVjdGlv
biBzaW5jZSB3ZQ0KPj4+IG5vdyBoYXZlIHRoZSBydWxlIHRoYXQgREYgaXMgYWx3YXlzIGNsZWFy
IGluIHRoZSBrZXJuZWwsIGJ1dCBvdXIgb2xkDQo+Pj4gMzItYml0IHg4NiAnc3RybmNweSgpIiBp
cyBob3JyaWJsZSBzbG93IGdhcmJhZ2UsIGJ1dCBhbHNvIGEgaGlzdG9yaWNhbA0KPj4+IGdlbSBm
cm9tIDMwIHllYXJzIGFnby4NCj4+Pg0KPj4+IEJ1dCB4ODYtNjQgZG9lc24ndCBkbyB0aGF0LCBz
byBJIGp1c3QgYnVpbHQgbGliL3N0cmluZyxjIHdpdGggY2xhbmcsDQo+Pj4gdG8gc2VlIHdoYXQg
aXQgY291bGQgZG8uDQo+Pj4NCj4+PiBDYW4gY2xhbmcgZG8gYmV0dGVyIHRoYW4gY29tcGxldGUg
Z2FyYmFnZSB3cml0dGVuIGJ5IGEgY2x1ZWxlc3MgcGVyc29uDQo+Pj4gZnJvbSB0aHJlZSBkZWNh
ZGVzIGFnbz8NCj4+Pg0KPj4+IFRoZSBlbmQgcmVzdWx0IGlzIG5vdCBnb29kLg0KPj4+DQo+Pj4g
Q2xhbmcgZGVjaWRlcyB0byB1bnJvbGwgdGhhdCBsb29wIGZvdXIgdGltZXMsIGFuZCBpbiB0aGUg
cHJvY2Vzcw0KPj4+IG1ha2luZyB0aGUgY29kZSA0eCB0aGUgc2l6ZSBpdCBzaG91bGQgYmUsIGZv
ciBhYnNvbHV0ZWx5IHplcm8gZ2Fpbi4NCj4+Pg0KPj4+IFRoaXMgaXMgdGhlIHdob2xlIGZ1bmN0
aW9uIHdpdGggI3ByYWdtYSBub3Vucm9sbCAoaWUgInNhbmUiKToNCj4+Pg0KPj4+IMKgwqBzdHJu
Y3B5Og0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgbW92cSAlcmRpLCAlcmF4DQo+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqB0ZXN0cSDCoMKgwqDCoMKgwqDCoCVyZHgsICVyZHgNCj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoGplIMKgwqAuTEJCM181DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqB4b3Js
ICVlY3gsICVlY3gNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoGptcCDCoC5MQkIzXzINCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoC5wMmFsaWduIMKgwqDCoMKgNCwgMHg5MA0KPj4+IMKgwqAuTEJC
M180Og0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRkcSAkMSwgJXJjeA0KPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgY21wcSAlcmN4LCAlcmR4DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBqZSDC
oMKgLkxCQjNfNQ0KPj4+IMKgwqAuTEJCM18yOg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgbW92
emJsIMKgwqDCoMKgwqDCoCglcnNpKSwgJWVkaQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgbW92
YiAlZGlsLCAoJXJheCwlcmN4KQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgdGVzdGIgwqDCoMKg
wqDCoMKgwqAlZGlsLCAlZGlsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBqZSDCoMKgLkxCQjNf
NA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRkcSAkMSwgJXJzaQ0KPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgam1wIMKgLkxCQjNfNA0KPj4+IMKgwqAuTEJCM181Og0KPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmV0cQ0KPj4+DQo+Pj4gYW5kIGhvbmVzdGx5LCB0aGF0J3MgcGVyZmVjdGx5IGZp
bmUuIEl0J3MgdmVyeSBtdWNoIHdoYXQgdGhlIGNvZGUNCj4+PiBkb2VzLiBJdCdzIDQ0IGJ5dGVz
LCBpdCBmaXRzIGluIG9uZSBjYWNoZWxpbmUsIGl0J3Mgbm90IGhvcnJpYmxlLiBJdCdzDQo+Pj4g
bm90IHdoYXQgSSB3b3VsZCBoYXZlIGRvbmUgYnkgaGFuZCwgYW5kIGNsYW5nIHNlZW1zIGEgYml0
IHRvbyBlYWdlciB0bw0KPj4+IG1vdmUgdGhlIGxvb3AgZW5kIHRlc3QgdG8gdGhlIHRvcCBvZiB0
aGUgbG9vcCwgYnV0IHdoYXRldmVyLiBJIHNlZQ0KPj4+IG5vdGhpbmcgdGhhdCBtYWtlcyBtZSBn
byAidGhhdCdzIGhvcnJpYmxlIi4NCj4+DQo+PiBGb3IgdGhlIGxvb3AgdGVzdCwgSSBrbm93IHRo
YXQgY2xhbmcgd2lsbCAicm90YXRlIiBsb29wcyBpbiBhbiBhdHRlbXB0DQo+PiB0byBoYXZlIG9u
ZSBjYW5vbmljYWwgbG9vcCBmb3JtLiBUaGF0IHdheSBwYXNzZXMgZG9uJ3QgaGF2ZSB0byBjaGVj
aw0KPj4gZm9yIG11bHRpcGxlIGRpZmZlcmVudCBmb3JtcyBvZiBsb29wcyBpZiB0aGV5J3JlIGFs
bCBpbiBvbmUgZm9ybS4NCj4+IFRoaXMgcmVkdWNlcyBjb21waWxlIHRpbWUgYW5kIGNvbXBsZXhp
dHkgaW4gdGhlIGNvbXBpbGVyLiDCoERvZXMgaXQNCj4+IGFsd2F5cyBwcm9kdWNlIHRoZSBtb3N0
IG9wdGltYWwgbG9vcHM/IMKgSXMgdGhhdCB3aGF0IGlzIGdvaW5nIG9uIGhlcmU/DQo+PiBJJ20g
bm90IHN1cmUuDQo+Pg0KPj4+DQo+Pj4gTm93LCBhZG1pdHRlZGx5IGl0J3Mgbm90IHBhcnRpY3Vs
YXJseSAqc21hcnQqIGVpdGhlciAtIHlvdSBjb3VsZCB0dXJuDQo+Pj4gdGhlIGNvbmRpdGlvbmFs
ICJicmFuY2ggb3ZlciBhIHNpbmdsZSBjb25zdGFudCBhZGQiIGludG8gYSBjb21wdXRlZA0KPj4+
IGFkZCBpbnN0ZWFkLCBzbyB0aGUNCj4+Pg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgdGVzdGIg
wqDCoMKgwqDCoMKgwqAlZGlsLCAlZGlsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBqZSDCoMKg
LkxCQjNfNA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRkcSAkMSwgJXJzaQ0KPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgam1wIMKgLkxCQjNfNA0KPj4+DQo+Pj4gY291bGQgLSBmb3IgZXhhbXBs
ZSAtIGhhdmUgYmVlbiBkb25lIGFzDQo+Pj4NCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkZGIg
JDI1NSwlZGlsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBhZGNxICQwLCAlcnNpDQo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqBqbXAgwqAuTEJCM180DQo+Pj4NCj4+PiB3aGljaCBjb3VsZCBhdm9p
ZCBzb21lIGJyYW5jaCBtaXNwcmVkaWN0cy4gwqBBbmQgaG9uZXN0bHkgdGhlbiB0aGUgY29kZQ0K
Pj4NCj4+IFBlcmhhcHMgYSBwZWVwaG9sZSBvcHRpbWl6YXRpb24gd2UgY2FuIGFkZD8gKERvZXMg
dGhlIGFkY3EgLSBhZGQgd2l0aA0KPj4gY2FycnkgLSByZWx5IG9uIHdoZXRoZXIgdGhlIHByZXZp
b3VzIGFkZGIgb3ZlcmZsb3dlZCwgaWUuICVkaWwgd2FzDQo+PiBub24temVybywgcmVwbGFjaW5n
IHRoZSB0ZXN0YitqZSBwYWlyPyBEaWQgSSB1bmRlcnN0YW5kIHRoYXQNCj4+IGNvcnJlY3RseT8p
IMKgVGhvdWdoIHdlJ2QgaGF2ZSB0byBrbm93IHRoYXQgJWRpbCB3YXNuJ3QgdXNlZCBhZnRlcg0K
Pj4gdGFraW5nIHRoZSBqdW1wLCBzaW5jZSBJIHRoaW5rIHlvdXIgdHJhbnNmb3JtZWQgdmVyc2lv
biBtb2RpZmllZCAlZGlsLA0KPj4gc28gcGVyaGFwcyB0aGF0IGNhbid0IGJlIGEgcGVlcGhvbGUg
b3B0LiBIbW0uDQo+Pg0KPj4+IHRoYXQgY2xhbmcgbW92ZWQgdG8gdGhlIHRvcCBzaG91bGQgcmVh
bGx5IGhhdmUgYmVlbiBhdCB0aGUgYm90dG9tIG9mDQo+Pj4gdGhlIGxvb3AsIGJ1dCBJIGRvbid0
IGtub3cgaWYgaXQgd291bGQgbWF0dGVyLiBUaGUgYWJvdmUgbWlnaHQgbG9vayBhDQo+Pj4gYml0
IG1vcmUgY2xldmVyLCBidXQgdGhlIGRhdGEgZGVwZW5kZW5jeSBtaWdodCBiZSB3b3JzZSBpZiB0
aGUgYnJhbmNoDQo+Pj4gcHJlZGljdHMgd2VsbC4gVGhlIGJyYW5jaCBiZWhhdmlvciBpcyBiaW1v
ZGFsIC0gdGhlIGxvb3Agc3RhcnRzIG91dA0KPj4+IG5vdCB0YWtpbmcgdGhhdCAiamUiLCBhbmQg
ZW5kcyB1cCB0YWtpbmcgaXQgLSBzbyBpdCBoYXMgYW4gYWxtb3N0DQo+Pj4gZ3VhcmFudGVlZCBt
aXNwcmVkaWN0IGluIHRoZSBtaWRkbGUgb2YgdGhlIGxvb3AsIGJ1dCB3aGF0ZXZlci4gWW91IHdp
bg0KPj4+IHNvbWUsIHlvdSBsb3NlIHNvbWUuDQo+Pj4NCj4+PiBBTllXQVkuDQo+Pj4NCj4+PiBU
aGUgYWJvdmUgZGlzY3Vzc2lvbiBpcyBhYm91dCAqcmVhc29uYWJsZSogY29kZS4NCj4+Pg0KPj4+
IFdoYXQgY2xhbmcgYWN0dWFsbHkgZ2VuZXJhdGVzIGJlYXJzIHZlcnkgbGl0dGxlIHJlc2VtYmxh
bmNlIHRvIGVpdGhlcg0KPj4+IHRoZSBhYm92ZSBzaW1wbGUgYW5kIHNob3J0LCBvciB0aGUgImNs
ZXZlciBhbmQgb25lIGNvbmRpdGlvbmFsIGJyYW5jaA0KPj4+IHNob3J0ZXIiIHZlcnNpb24uDQo+
Pj4NCj4+PiBXaGF0IGNsYW5nIGFjdHVhbGx5IGdlbmVyYXRlcyBpcyB0aGlzIGhvcnJvcjoNCj4+
Pg0KPj4+IMKgwqBzdHJuY3B5Og0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgbW92cSAlcmRpLCAl
cmF4DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqB0ZXN0cSDCoMKgwqDCoMKgwqDCoCVyZHgsICVy
ZHgNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoGplIMKgwqAuTEJCM18xOQ0KPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgbGVhcSAtMSglcmR4KSwgJXI4DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBt
b3ZxICVyZHgsICVyOQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgYW5kcSAkMywgJXI5DQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqBqZSDCoMKgLkxCQjNfMg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgeG9ybCAlZWRpLCAlZWRpDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBqbXAgwqAuTEJCM180
DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAucDJhbGlnbiDCoMKgwqDCoDQsIDB4OTANCj4+PiDC
oMKgLkxCQjNfNjoNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkZHEgJDEsICVyZGkNCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoGNtcHEgJXJkaSwgJXI5DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqBqZSDCoMKgLkxCQjNfNw0KPj4+IMKgwqAuTEJCM180Og0KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgbW92emJsIMKgwqDCoMKgwqDCoCglcnNpKSwgJWVjeA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgbW92YiAlY2wsICglcmF4LCVyZGkpDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqB0ZXN0YiDC
oMKgwqDCoMKgwqDCoCVjbCwgJWNsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBqZSDCoMKgLkxC
QjNfNg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRkcSAkMSwgJXJzaQ0KPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgam1wIMKgLkxCQjNfNg0KPj4+IMKgwqAuTEJCM183Og0KPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgbGVhcSAoJXJheCwlcmRpKSwgJXI5DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqBzdWJxICVyZGksICVyZHgNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoGNtcHEgJDMsICVyOA0K
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgamIgwqDCoC5MQkIzXzE5DQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqBqbXAgwqAuTEJCM185DQo+Pj4gwqDCoC5MQkIzXzI6DQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqBtb3ZxICVyYXgsICVyOQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgY21wcSAkMywg
JXI4DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBqYWUgwqAuTEJCM185DQo+Pj4gwqDCoC5MQkIz
XzE5Og0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0cQ0KPj4+IMKgwqAuTEJCM185Og0KPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgeG9ybCAlZWRpLCAlZWRpDQo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqBqbXAgwqAuTEJCM18xMA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgLnAyYWxpZ24gwqDC
oMKgwqA0LCAweDkwDQo+Pj4gwqDCoC5MQkIzXzE4Og0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
YWRkcSAkNCwgJXJkaQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgY21wcSAlcmRpLCAlcmR4DQo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBqZSDCoMKgLkxCQjNfMTkNCj4+PiDCoMKgLkxCQjNfMTA6
DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBtb3Z6YmwgwqDCoMKgwqDCoMKgKCVyc2kpLCAlZWN4
DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBtb3ZiICVjbCwgKCVyOSwlcmRpKQ0KPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgdGVzdGIgwqDCoMKgwqDCoMKgwqAlY2wsICVjbA0KPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgamUgwqDCoC5MQkIzXzEyDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBhZGRx
ICQxLCAlcnNpDQo+Pj4gwqDCoC5MQkIzXzEyOg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgbW92
emJsIMKgwqDCoMKgwqDCoCglcnNpKSwgJWVjeA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgbW92
YiAlY2wsIDEoJXI5LCVyZGkpDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqB0ZXN0YiDCoMKgwqDC
oMKgwqDCoCVjbCwgJWNsDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBqZSDCoMKgLkxCQjNfMTQN
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkZHEgJDEsICVyc2kNCj4+PiDCoMKgLkxCQjNfMTQ6
DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBtb3Z6YmwgwqDCoMKgwqDCoMKgKCVyc2kpLCAlZWN4
DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBtb3ZiICVjbCwgMiglcjksJXJkaSkNCj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoHRlc3RiIMKgwqDCoMKgwqDCoMKgJWNsLCAlY2wNCj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoGplIMKgwqAuTEJCM18xNg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRk
cSAkMSwgJXJzaQ0KPj4+IMKgwqAuTEJCM18xNjoNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoG1v
dnpibCDCoMKgwqDCoMKgwqAoJXJzaSksICVlY3gNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoG1v
dmIgJWNsLCAzKCVyOSwlcmRpKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgdGVzdGIgwqDCoMKg
wqDCoMKgwqAlY2wsICVjbA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgamUgwqDCoC5MQkIzXzE4
DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqBhZGRxICQxLCAlcnNpDQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqBqbXAgwqAuTEJCM18xOA0KPj4+DQo+Pj4gd2hpY2ggaXMgMTcwIGJ5dGVzIGluIHNp
emUgaW5zdGVhZCBvZiB0aGUgNDQgYnl0ZXMsIHNvIG5vdyBpdCB0YWtlcyB1cA0KPj4+IHRocmVl
IGNhY2hlbGluZXMuDQo+Pj4NCj4+PiBOb3csIEkgZG9uJ3Qga25vdyBob3cgY29tbW9uIHRoaXMg
aXMuIE1heWJlIHRoaXMgaXMgdGhlIG9ubHkgcGxhY2UgaW4NCj4+PiB0aGUga2VybmVsIHdoZXJl
IHRoaXMgdW5yb2xsaW5nIGNhc2UgaGFwcGVucy4gQnV0IGluIGdlbmVyYWwsIGxvb3ANCj4+PiB1
bnJvbGxpbmcgaW4gdGhlIGtlcm5lbCBpcyBhIGJpZyBtaXN0YWtlIHVubGVzcyBpdCdzIGEgdmVy
eSBvYnZpb3VzDQo+Pj4gY2FzZSAoaWUgc21hbGwgY29uc3RhbnQgZnVsbCB1bnJvbGwgbWFrZXMg
cGVyZmVjdCBzZW5zZTogaWYgeW91IHNlZQ0KPj4+DQo+Pj4gwqDCoMKgwqDCoMKgwqBpZiAoaSA9
IDA7IGkgPCA0OyBpKyspDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKnArKyA9
ICpxKys7DQo+Pj4NCj4+PiB0aGVuIHlvdSBzaG91bGQgbW9zdCBkZWZpbml0ZWx5IHVucm9sbCB0
aGF0IHRvDQo+Pj4NCj4+PiDCoMKgwqDCoMKgwqDCoCpwKysgPSAqcSsrOw0KPj4+IMKgwqDCoMKg
wqDCoMKgKnArKyA9ICpxKys7DQo+Pj4gwqDCoMKgwqDCoMKgwqAqcCsrID0gKnErKzsNCj4+PiDC
oMKgwqDCoMKgwqDCoCpwKysgPSAqcSsrOw0KPj4+DQo+Pj4gYmVjYXVzZSBpdCdzIHNpbXBseSBz
bWFsbGVyIGFuZCBzaW1wbGVyIHRvIG5vdCBoYXZlIGFueSBjb25kaXRpb25hbHMNCj4+PiBhdCBh
bGwsIGFuZCBqdXN0IGRvIGZvdXIgaXRlcmF0aW9ucyBzdGF0aWNhbGx5Lg0KPj4+DQo+Pj4gQnV0
IHRoZSAnc3RybmNweSgpJyBraW5kIG9mIHVucm9sbGluZyBpcyBhIG1pc3Rha2Ugd2hlbiBrZXJu
ZWwgbG9vcHMNCj4+PiB0ZW5kIHRvIGhhdmUgdmVyeSBsb3cgbG9vcCBjb3VudHMuDQo+Pj4NCj4+
PiBBcyBmYXIgYXMgSSBrbm93LCBnY2MgZG9lc24ndCBkbyBhbnkgdW5yb2xsaW5nIGF0IC1PMi4N
Cj4+DQo+PiBGb3IgY2xhbmcsIHdlIHdpbGwgZG8gbGltaXRlZCB1bnJvbGxpbmcgYXQgLU8yLCBh
bmQgdmVyeSBhZ2dyZXNzaXZlDQo+PiB1bnJvbGxpbmcgYXQgLU8zOyBpZiBhIGxvb3AgY2FuIGJl
IGZ1bGx5IHVucm9sbGVkLCB3ZSdyZSBsaWtlbHkgdG8gZG8NCj4+IHNvIGF0IC1PMywgd2l0aCBh
IG11Y2ggc21hbGxlciBvciBtb3JlIGNvbnNlcnZhdGl2ZSB1bnJvbGwgYXQgLU8yLiDCoEkNCj4+
IHRoaW5rIEkgZGVtb25zdHJhdGVkIHRoYXQgaW4gdGhpcyB0YWxrLCBpZiB5b3UgaGF2ZSB0aGUg
dGltZSBvciBhcmUNCj4+IGludGVyZXN0ZWQgbW9yZSBpbiBpbnRyb3NwZWN0aW5nIHRoZSBjb21w
aWxlciAoeWVhaCwgeWVhaCwgYWluJ3QNCj4+IG5vYm9keSBnb3QgdGltZSBmb3IgdGhhdCk6IGh0
dHBzOi8veW91dHUuYmUvYlVUWGhjZl9hTmM/dD0xNDE1IA0KPj4gPGh0dHBzOi8veW91dHUuYmUv
YlVUWGhjZl9hTmM/dD0xNDE1Pg0KPj4NCj4+IE15IGh5cG90aGVzaXMgaGVyZSBpcyB0aGF0IExM
Vk0gbWF5IG5vdCBiZSBjb25zaWRlcmluZyAtbW5vLXNzZTIgYW5kDQo+PiBmcmllbmRzIChpZS4g
bm8gZmxvYXRpbmcgYXQgYWxsLCBwbGVhc2UpIHRoYXQgdGhlIGtlcm5lbCB1c2VzIHdoZW4NCj4+
IGRvaW5nIGl0cyBzaW1wbGVyIHVucm9sbGluZy4gwqBJZiB0aGUgbW9uc3Ryb3NpdHkgbG9va3Mg
bW9yZSBjb21wYWN0DQo+PiB3aXRoIG5vbmUgb2YgdGhlIC1tbm8tc3NlMiBhbmQgZnJpZW5kcyBm
bGFncyBzZXQsIHRoZW4gdGhhdCB3b3VsZCBsZW5kDQo+PiBpdHNlbGYgdG8gdGhhdCBoeXBvdGhl
c2lzLiDCoElJUkMsIHRoZSBtaWRkbGUgZW5kIGRvZXMgbG9vcCB1bnJvbGxpbmcNCj4+IGluIGEg
bm9uLW1hY2hpbmUgYWdub3N0aWMgbWFubmVyOyBpdCBoYXMgdG8ga25vdyB3aGF0J3MgdGhlIGJh
c2ljDQo+PiB3aWR0aCBvZiBTSU1EIHNpbmNlIHdlJ2QgZ2VuZXJhbGx5IGxpa2UgdG8gdmVjdG9y
aXplIGEgbG9vcCBhZnRlcg0KPj4gd2UndmUgdW5yb2xsZWQgaXQsIHNvIHRoZSBwYXNzIGlzIGF3
YXJlIG9mIHNwZWNpZmljcyBvZiB0aGUgdGFyZ2V0DQo+PiBtYWNoaW5lICh0aGlzIGlzIGV4Y2Vw
dGlvbmFsIHRvIG1lOyBJIHVuZGVyc3RhbmQgd2h5IGl0J3MgbmVjZXNzYXJ5LA0KPj4gYnV0IGdl
bmVyYWxseSB0aGUgbWlkZGxlIGVuZCBvcHRpbWl6YXRpb25zIGFyZSBtYWNoaW5lIGFnbm9zdGlj
KS4NCj4+IFRoZW4gbGF0ZXIgb25jZSB3ZSBnZXQgdG8gYWN0dWFsIG1hY2hpbmUgY29kZSBnZW5l
cmF0aW9uIGZvciB4ODYsIHdlDQo+PiBkaXNjb3ZlciB0aGUgY29uc3RyYWludHMgdGhhdCB3ZSBj
YW4ndCBhY3R1YWxseSB1c2UgYW55IG9mIHRoZSBTU0UNCj4+IHJlZ2lzdGVycyBhbmQgaW5zdGVh
ZCBnZW5lcmF0ZSBtb3JlIHZlcmJvc2UgbG9vcCBpdGVyYXRpb25zIHVzaW5nDQo+PiBHUFJzLiDC
oExpa2VseSwgdGhlIG1pZGRsZSBlbmQgdW5yb2xsZXIgbmVlZHMgdG8gY2hlY2sgdGhhdCAtc3Nl
Mg0KPj4gd2Fzbid0IHNldCBCRUZPUkUgdGhpbmtpbmcgaXQgaGFzIHRoZSBncmVlbiBsaWdodCB0
byB1bnJvbGwgYSBsb29wIHg0Lg0KPj4gQnV0IGl0J3MganVzdCBhIGh5cG90aGVzaXM7IEkgaGF2
ZW4ndCB2YWxpZGF0ZWQgaXQgeWV0LCBhbmQgSSBjb3VsZCBiZQ0KPj4gd2lsZGx5IHdyb25nLg0K
Pj4NCj4+Pg0KPj4+IFdoYXQgaXMgdGhlIG1hZ2ljIHRvIG1ha2UgY2xhbmcgbm90IGRvIHN0dXBp
ZCB0aGluZ3MgbGlrZSB0aGlzPyBJDQo+Pj4gb2J2aW91c2x5IGtub3cgYWJvdXQgdGhhdA0KPj4+
DQo+Pj4gwqDCoMKgI3ByYWdtYSBub3Vucm9sbA0KPj4+DQo+Pj4gYnV0IEkgZG9uJ3Qgd2FudCB0
byBtYXJrIHZhcmlvdXMgdW5pbXBvcnRhbnQgZnVuY3Rpb25zLiBJJ2QgbXVjaA0KPj4+IHJhdGhl
ciBoYXZlIHRoZSBkZWZhdWx0IGJlICJkb24ndCBkbyBzdHVwaWQgdGhpbmdzIiwgYW5kIHRoZW4g
aWYgd2UNCj4+PiBzZWUgYSBjYXNlIHdoZXJlIGxvb3AgdW5yb2xsaW5nIHJlYWxseSBtYXR0ZXJz
LCBhbmQgaXQncyBpbXBvcnRhbnQsIHdlDQo+Pj4gY2FuIG1hcmsgKnRoYXQqIHNwZWNpYWxseS4N
Cj4+Pg0KPj4+IEhtbT8NCj4+Pg0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoExp
bnVzDQo+Pg0KPj4NCj4+DQo+PiAtLSANCj4+IFRoYW5rcywNCj4+IH5OaWNrIERlc2F1bG5pZXJz
DQo+DQoNCi0tIApZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJz
Y3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBzICJDbGFuZyBCdWlsdCBMaW51eCIgZ3JvdXAuClRv
IHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZy
b20gaXQsIHNlbmQgYW4gZW1haWwgdG8gY2xhbmctYnVpbHQtbGludXgrdW5zdWJzY3JpYmVAZ29v
Z2xlZ3JvdXBzLmNvbS4KVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiB2aXNpdCBo
dHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvY2xhbmctYnVpbHQtbGludXgvOWU1MTdi
NWQtZjBlNS0yNDBhLTJlM2MtNWNjMjRlZGE2MDFlJTQwc3dpdGNoYmFja2NvbXBpbGVycy5jb20u
Cg==
--------------10F690C6F9A92818FFB4484A
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Here's the IR resulting the generic implementation from
      lib/string.c.</p>
    <p>$ clang -O2 -emit-llvm strncpy.c -c<br>
      # This happens to be clang10, but check ToT returns a similar
      output<br>
      $ ./opt strncpy.bc -S<br>
      ; ModuleID =3D 'strncpy.bc'<br>
      source_filename =3D "strncpy.c"<br>
      target datalayout =3D
      "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S1=
28"<br>
      target triple =3D "x86_64-pc-linux-gnu"<br>
      <br>
      ; Function Attrs: nofree norecurse nounwind uwtable<br>
      define dso_local i8* @foo(i8* returned %0, i8* nocapture readonly
      %1, i64 %2) local_unnamed_addr #0 {<br>
      =C2=A0 %4 =3D icmp eq i64 %2, 0<br>
      =C2=A0 br i1 %4, label %53, label %5<br>
      <br>
      5:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ; preds =
=3D %3<br>
      =C2=A0 %6 =3D add i64 %2, -1<br>
      =C2=A0 %7 =3D and i64 %2, 3<br>
      =C2=A0 %8 =3D icmp eq i64 %7, 0<br>
      =C2=A0 br i1 %8, label %22, label %9<br>
      <br>
      9:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ; preds =
=3D %5, %9<br>
      =C2=A0 %10 =3D phi i8* [ %18, %9 ], [ %0, %5 ]<br>
      =C2=A0 %11 =3D phi i64 [ %19, %9 ], [ %2, %5 ]<br>
      =C2=A0 %12 =3D phi i8* [ %17, %9 ], [ %1, %5 ]<br>
      =C2=A0 %13 =3D phi i64 [ %20, %9 ], [ %7, %5 ]<br>
      =C2=A0 %14 =3D load i8, i8* %12, align 1, !tbaa !2<br>
      =C2=A0 store i8 %14, i8* %10, align 1, !tbaa !2<br>
      =C2=A0 %15 =3D icmp eq i8 %14, 0<br>
      =C2=A0 %16 =3D getelementptr inbounds i8, i8* %12, i64 1<br>
      =C2=A0 %17 =3D select i1 %15, i8* %12, i8* %16<br>
      =C2=A0 %18 =3D getelementptr inbounds i8, i8* %10, i64 1<br>
      =C2=A0 %19 =3D add nsw i64 %11, -1<br>
      =C2=A0 %20 =3D add i64 %13, -1<br>
      =C2=A0 %21 =3D icmp eq i64 %20, 0<br>
      =C2=A0 br i1 %21, label %22, label %9, !llvm.loop !5<br>
      <br>
      22:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ; preds =3D %9=
, %5<br>
      =C2=A0 %23 =3D phi i8* [ %0, %5 ], [ %18, %9 ]<br>
      =C2=A0 %24 =3D phi i64 [ %2, %5 ], [ %19, %9 ]<br>
      =C2=A0 %25 =3D phi i8* [ %1, %5 ], [ %17, %9 ]<br>
      =C2=A0 %26 =3D icmp ult i64 %6, 3<br>
      =C2=A0 br i1 %26, label %53, label %27<br>
      <br>
      27:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ; preds =3D %2=
2,
      %27<br>
      =C2=A0 %28 =3D phi i8* [ %50, %27 ], [ %23, %22 ]<br>
      =C2=A0 %29 =3D phi i64 [ %51, %27 ], [ %24, %22 ]<br>
      =C2=A0 %30 =3D phi i8* [ %49, %27 ], [ %25, %22 ]<br>
      =C2=A0 %31 =3D load i8, i8* %30, align 1, !tbaa !2<br>
      =C2=A0 store i8 %31, i8* %28, align 1, !tbaa !2<br>
      =C2=A0 %32 =3D icmp eq i8 %31, 0<br>
      =C2=A0 %33 =3D getelementptr inbounds i8, i8* %30, i64 1<br>
      =C2=A0 %34 =3D select i1 %32, i8* %30, i8* %33<br>
      =C2=A0 %35 =3D getelementptr inbounds i8, i8* %28, i64 1<br>
      =C2=A0 %36 =3D load i8, i8* %34, align 1, !tbaa !2<br>
      =C2=A0 store i8 %36, i8* %35, align 1, !tbaa !2<br>
      =C2=A0 %37 =3D icmp eq i8 %36, 0<br>
      =C2=A0 %38 =3D getelementptr inbounds i8, i8* %34, i64 1<br>
      =C2=A0 %39 =3D select i1 %37, i8* %34, i8* %38<br>
      =C2=A0 %40 =3D getelementptr inbounds i8, i8* %28, i64 2<br>
      =C2=A0 %41 =3D load i8, i8* %39, align 1, !tbaa !2<br>
      =C2=A0 store i8 %41, i8* %40, align 1, !tbaa !2<br>
      =C2=A0 %42 =3D icmp eq i8 %41, 0<br>
      =C2=A0 %43 =3D getelementptr inbounds i8, i8* %39, i64 1<br>
      =C2=A0 %44 =3D select i1 %42, i8* %39, i8* %43<br>
      =C2=A0 %45 =3D getelementptr inbounds i8, i8* %28, i64 3<br>
      =C2=A0 %46 =3D load i8, i8* %44, align 1, !tbaa !2<br>
      =C2=A0 store i8 %46, i8* %45, align 1, !tbaa !2<br>
      =C2=A0 %47 =3D icmp eq i8 %46, 0<br>
      =C2=A0 %48 =3D getelementptr inbounds i8, i8* %44, i64 1<br>
      =C2=A0 %49 =3D select i1 %47, i8* %44, i8* %48<br>
      =C2=A0 %50 =3D getelementptr inbounds i8, i8* %28, i64 4<br>
      =C2=A0 %51 =3D add nsw i64 %29, -4<br>
      =C2=A0 %52 =3D icmp eq i64 %51, 0<br>
      =C2=A0 br i1 %52, label %53, label %27<br>
      <br>
      53:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ; preds =3D %2=
2,
      %27, %3<br>
      =C2=A0 ret i8* %0<br>
      }<br>
      <br>
      attributes #0 =3D { nofree norecurse nounwind uwtable
      "correctly-rounded-divide-sqrt-fp-math"=3D"false"
      "disable-tail-calls"=3D"false" "frame-pointer"=3D"none"
      "less-precise-fpmad"=3D"false" "min-legal-vector-width"=3D"0"
      "no-infs-fp-math"=3D"false" "no-jump-tables"=3D"false"
      "no-nans-fp-math"=3D"false" "no-signed-zeros-fp-math"=3D"false"
      "no-trapping-math"=3D"false" "stack-protector-buffer-size"=3D"8"
      "target-cpu"=3D"x86-64"
      "target-features"=3D"+cx8,+fxsr,+mmx,+sse,+sse2,+x87"
      "unsafe-fp-math"=3D"false" "use-soft-float"=3D"false" }<br>
      <br>
      !llvm.module.flags =3D !{!0}<br>
      !llvm.ident =3D !{!1}<br>
      <br>
      !0 =3D !{i32 1, !"wchar_size", i32 4}<br>
      !1 =3D !{!"clang version 10.0.0-4ubuntu1 "}<br>
      !2 =3D !{!3, !3, i64 0}<br>
      !3 =3D !{!"omnipotent char", !4, i64 0}<br>
      !4 =3D !{!"Simple C/C++ TBAA"}<br>
      !5 =3D distinct !{!5, !6}<br>
      !6 =3D !{!"llvm.loop.unroll.disable"}<br>
    </p>
    <p>To me, the most interesting piece of this is not that we unrolled
      - it is the lowering of the select (e.g. the address
      manipulation).<br>
    </p>
    <p>define i8* @test(i8* %base, i8 %arg) {<br>
      =C2=A0 %cmp =3D icmp eq i8 %arg, 0<br>
      =C2=A0 %gep =3D getelementptr inbounds i8, i8* %base, i64 1<br>
      =C2=A0 %ret =3D select i1 %cmp, i8* %base, i8* %gep<br>
      =C2=A0 ret i8* %ret<br>
      }</p>
    <p>=C2=A0=C2=A0=C2=A0 leaq=C2=A0=C2=A0=C2=A0 1(%rdi), %rax<br>
      =C2=A0=C2=A0=C2=A0 testb=C2=A0=C2=A0=C2=A0 %sil, %sil<br>
      =C2=A0=C2=A0=C2=A0 cmoveq=C2=A0=C2=A0=C2=A0 %rdi, %rax<br>
      =C2=A0=C2=A0=C2=A0 # no idea why this is a cmov in the reduced exampl=
e, and a
      branch in the unreduced one<br>
    </p>
    <p>Versus an alternative of:<br>
      <br>
      define i8* @handopt(i8* %base, i8 %arg) {<br>
      =C2=A0 %cmp =3D icmp ne i8 %arg, 0<br>
      =C2=A0 %cmp.zext =3D zext i1 %cmp to i64<br>
      =C2=A0 %ret =3D getelementptr inbounds i8, i8* %base, i64 %cmp.zext<b=
r>
      =C2=A0 ret i8* %ret<br>
      }</p>
    <p>=C2=A0=C2=A0=C2=A0 movq=C2=A0=C2=A0=C2=A0 %rdi, %rax<br>
      =C2=A0=C2=A0=C2=A0 cmpb=C2=A0=C2=A0=C2=A0 $1, %sil<br>
      =C2=A0=C2=A0=C2=A0 sbbq=C2=A0=C2=A0=C2=A0 $-1, %rax<br>
    </p>
    <p>If I hand tweak the IR to use the alternate pattern, I get output
      of:</p>
    <p>=C2=A0=C2=A0=C2=A0 movq=C2=A0=C2=A0=C2=A0 %rdi, %rax<br>
      =C2=A0=C2=A0=C2=A0 testq=C2=A0=C2=A0=C2=A0 %rdx, %rdx<br>
      =C2=A0=C2=A0=C2=A0 je=C2=A0=C2=A0=C2=A0 .LBB0_9<br>
      # %bb.1:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # %bb3<br>
      =C2=A0=C2=A0=C2=A0 leaq=C2=A0=C2=A0=C2=A0 -1(%rdx), %r8<br>
      =C2=A0=C2=A0=C2=A0 movq=C2=A0=C2=A0=C2=A0 %rdx, %r9<br>
      =C2=A0=C2=A0=C2=A0 andq=C2=A0=C2=A0=C2=A0 $3, %r9<br>
      =C2=A0=C2=A0=C2=A0 je=C2=A0=C2=A0=C2=A0 .LBB0_2<br>
      # %bb.3:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # %bb7.preheader<br>
      =C2=A0=C2=A0=C2=A0 xorl=C2=A0=C2=A0=C2=A0 %edi, %edi<br>
      =C2=A0=C2=A0=C2=A0 .p2align=C2=A0=C2=A0=C2=A0 4, 0x90<br>
      .LBB0_4:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # %bb7<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 # =3D&gt;This Inner Loop
      Header: Depth=3D1<br>
      =C2=A0=C2=A0=C2=A0 movzbl=C2=A0=C2=A0=C2=A0 (%rsi), %ecx<br>
      =C2=A0=C2=A0=C2=A0 movb=C2=A0=C2=A0=C2=A0 %cl, (%rax,%rdi)<br>
      =C2=A0=C2=A0=C2=A0 cmpb=C2=A0=C2=A0=C2=A0 $1, %cl<br>
      =C2=A0=C2=A0=C2=A0 sbbq=C2=A0=C2=A0=C2=A0 $-1, %rsi<br>
      =C2=A0=C2=A0=C2=A0 addq=C2=A0=C2=A0=C2=A0 $1, %rdi<br>
      =C2=A0=C2=A0=C2=A0 cmpq=C2=A0=C2=A0=C2=A0 %rdi, %r9<br>
      =C2=A0=C2=A0=C2=A0 jne=C2=A0=C2=A0=C2=A0 .LBB0_4<br>
      # %bb.5:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # %bb20.loopexit<br>
      =C2=A0=C2=A0=C2=A0 leaq=C2=A0=C2=A0=C2=A0 (%rax,%rdi), %r9<br>
      =C2=A0=C2=A0=C2=A0 subq=C2=A0=C2=A0=C2=A0 %rdi, %rdx<br>
      =C2=A0=C2=A0=C2=A0 cmpq=C2=A0=C2=A0=C2=A0 $3, %r8<br>
      =C2=A0=C2=A0=C2=A0 jae=C2=A0=C2=A0=C2=A0 .LBB0_7<br>
      =C2=A0=C2=A0=C2=A0 jmp=C2=A0=C2=A0=C2=A0 .LBB0_9<br>
      .LBB0_2:<br>
      =C2=A0=C2=A0=C2=A0 movq=C2=A0=C2=A0=C2=A0 %rax, %r9<br>
      =C2=A0=C2=A0=C2=A0 cmpq=C2=A0=C2=A0=C2=A0 $3, %r8<br>
      =C2=A0=C2=A0=C2=A0 jb=C2=A0=C2=A0=C2=A0 .LBB0_9<br>
      .LBB0_7:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # %bb25.preheader<br>
      =C2=A0=C2=A0=C2=A0 xorl=C2=A0=C2=A0=C2=A0 %edi, %edi<br>
      =C2=A0=C2=A0=C2=A0 .p2align=C2=A0=C2=A0=C2=A0 4, 0x90<br>
      .LBB0_8:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # %bb25<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 # =3D&gt;This Inner Loop
      Header: Depth=3D1<br>
      =C2=A0=C2=A0=C2=A0 movzbl=C2=A0=C2=A0=C2=A0 (%rsi), %ecx<br>
      =C2=A0=C2=A0=C2=A0 movb=C2=A0=C2=A0=C2=A0 %cl, (%r9,%rdi)<br>
      =C2=A0=C2=A0=C2=A0 cmpb=C2=A0=C2=A0=C2=A0 $1, %cl<br>
      =C2=A0=C2=A0=C2=A0 sbbq=C2=A0=C2=A0=C2=A0 $-1, %rsi<br>
      =C2=A0=C2=A0=C2=A0 movzbl=C2=A0=C2=A0=C2=A0 (%rsi), %ecx<br>
      =C2=A0=C2=A0=C2=A0 movb=C2=A0=C2=A0=C2=A0 %cl, 1(%r9,%rdi)<br>
      =C2=A0=C2=A0=C2=A0 cmpb=C2=A0=C2=A0=C2=A0 $1, %cl<br>
      =C2=A0=C2=A0=C2=A0 sbbq=C2=A0=C2=A0=C2=A0 $-1, %rsi<br>
      =C2=A0=C2=A0=C2=A0 movzbl=C2=A0=C2=A0=C2=A0 (%rsi), %ecx<br>
      =C2=A0=C2=A0=C2=A0 cmpb=C2=A0=C2=A0=C2=A0 $1, %cl<br>
      =C2=A0=C2=A0=C2=A0 sbbq=C2=A0=C2=A0=C2=A0 $-1, %rsi<br>
      =C2=A0=C2=A0=C2=A0 movb=C2=A0=C2=A0=C2=A0 %cl, 2(%r9,%rdi)<br>
      =C2=A0=C2=A0=C2=A0 movzbl=C2=A0=C2=A0=C2=A0 (%rsi), %ecx<br>
      =C2=A0=C2=A0=C2=A0 movb=C2=A0=C2=A0=C2=A0 %cl, 3(%r9,%rdi)<br>
      =C2=A0=C2=A0=C2=A0 cmpb=C2=A0=C2=A0=C2=A0 $1, %cl<br>
      =C2=A0=C2=A0=C2=A0 sbbq=C2=A0=C2=A0=C2=A0 $-1, %rsi<br>
      =C2=A0=C2=A0=C2=A0 addq=C2=A0=C2=A0=C2=A0 $4, %rdi<br>
      =C2=A0=C2=A0=C2=A0 cmpq=C2=A0=C2=A0=C2=A0 %rdi, %rdx<br>
      =C2=A0=C2=A0=C2=A0 jne=C2=A0=C2=A0=C2=A0 .LBB0_8<br>
      .LBB0_9:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # %bb51<br>
      =C2=A0=C2=A0=C2=A0 retq<br>
      <br>
    </p>
    <p>That's at least somewhat better.<br>
    </p>
    <p>Philip<br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/28/21 6:00 PM, Craig Topper wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:37453471-1498-4C1C-8022-93697D8C2DD4@sifive.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
      There is =E2=80=9C-mllvm -unroll-runtime=3Dfalse=E2=80=9D to disable =
unrolling of
      loops with runtime trip count. There are a bunch of other knobs at
      the top of=C2=A0<font class=3D"" face=3D"Menlo" color=3D"#000000"><sp=
an
          style=3D"font-size: 11px;" class=3D"">llvm/lib/Transforms/Scalar/=
LoopUnrollPass.cpp.
          I</span><span style=3D"caret-color: rgb(0, 0, 0); font-size:
          11px;" class=3D"">=E2=80=99</span><span style=3D"font-size: 11px;=
"
          class=3D"">m not very familiar with them myself.</span></font>
      <div><br class=3D"">
        <blockquote type=3D"cite" class=3D"">
          <div class=3D"">On Aug 28, 2021, at 1:29 PM, Nick Desaulniers
            &lt;<a href=3D"mailto:ndesaulniers@google.com" class=3D""
              moz-do-not-send=3D"true">ndesaulniers@google.com</a>&gt;
            wrote:</div>
          <br class=3D"Apple-interchange-newline">
          <div class=3D"">
            <div class=3D"">(We're moving from <a
                href=3D"mailto:clang-built-linux@googlegroups.com"
                class=3D"" moz-do-not-send=3D"true">clang-built-linux@googl=
egroups.com</a>
              to<br class=3D"">
              <a href=3D"mailto:llvm@lists.linux.dev" class=3D""
                moz-do-not-send=3D"true">llvm@lists.linux.dev</a>; sorry
              for the churn, but we think this will make<br class=3D"">
              for more accessible archival and access from <a
                href=3D"http://lore.kernel.org" class=3D""
                moz-do-not-send=3D"true">lore.kernel.org</a>)<br class=3D""=
>
              <br class=3D"">
              On Sat, Aug 28, 2021 at 11:29 AM Linus Torvalds<br
                class=3D"">
              &lt;<a href=3D"mailto:torvalds@linux-foundation.org"
                class=3D"" moz-do-not-send=3D"true">torvalds@linux-foundati=
on.org</a>&gt;
              wrote:<br class=3D"">
              <blockquote type=3D"cite" class=3D""><br class=3D"">
                So it turns out that s390 had a bug due to its own
                private 'strncpy()'<br class=3D"">
                being broken and not doing the insane thing that
                strncpy() is defined<br class=3D"">
                to do.<br class=3D"">
              </blockquote>
              <br class=3D"">
              Like continuing to zero the rest of the buffer up to n?<br
                class=3D"">
              <br class=3D"">
              <blockquote type=3D"cite" class=3D""><br class=3D"">
                Which is fine - I understand exactly how that happens,
                and strncpy()<br class=3D"">
                is one of my least favorite functions.<br class=3D"">
                <br class=3D"">
                Anyway, I suggested that s390 just use the generic
                function we have,<br class=3D"">
                instead of implementing its own version, because nobody
                really cares,<br class=3D"">
                and the generic function is small and simple and "good
                enough". See<br class=3D"">
                <br class=3D"">
                =C2=A0=C2=A0=C2=A0<a
href=3D"https://lore.kernel.org/lkml/CAHk-=3DwjhKNB_1a6wjjPh2PvMrtjVs=3DDgG=
Y5uM2jq3WBBaYMyGQ@mail.gmail.com/"
                  class=3D"" moz-do-not-send=3D"true">https://lore.kernel.o=
rg/lkml/CAHk-=3DwjhKNB_1a6wjjPh2PvMrtjVs=3DDgGY5uM2jq3WBBaYMyGQ@mail.gmail.=
com/</a><br
                  class=3D"">
                <br class=3D"">
                for details, although they don't really matter for this
                email.<br class=3D"">
                <br class=3D"">
                What matters for this email is that writing that thing
                made me go "ok,<br class=3D"">
                just how good does that generic version look, compared
                to the old<br class=3D"">
                legacy 32-bit historical version that uses the x86
                string instructions<br class=3D"">
                just because it literally goes all the way back to my
                learning the<br class=3D"">
                i386 and learning gcc inline asm".<br class=3D"">
                <br class=3D"">
                Because yes, that routine *literally* exists in that
                exact form in<br class=3D"">
                linux-0.01 - it's moved, and it has lost a "cld"
                instruction since we<br class=3D"">
                now have the rule that DF is always clear in the kernel,
                but our old<br class=3D"">
                32-bit x86 'strncpy()" is horrible slow garbage, but
                also a historical<br class=3D"">
                gem from 30 years ago.<br class=3D"">
                <br class=3D"">
                But x86-64 doesn't do that, so I just built lib/string,c
                with clang,<br class=3D"">
                to see what it could do.<br class=3D"">
                <br class=3D"">
                Can clang do better than complete garbage written by a
                clueless person<br class=3D"">
                from three decades ago?<br class=3D"">
                <br class=3D"">
                The end result is not good.<br class=3D"">
                <br class=3D"">
                Clang decides to unroll that loop four times, and in the
                process<br class=3D"">
                making the code 4x the size it should be, for absolutely
                zero gain.<br class=3D"">
                <br class=3D"">
                This is the whole function with #pragma nounroll (ie
                "sane"):<br class=3D"">
                <br class=3D"">
                =C2=A0=C2=A0strncpy:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movq %rdi, %rax<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0testq =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%rdx, %rdx<br class=3D""=
>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_5<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0xorl %ecx, %ecx<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jmp =C2=A0.LBB3_2<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0.p2align =C2=A0=C2=A0=C2=A0=C2=A04, 0x90<br class=3D"">
                =C2=A0=C2=A0.LBB3_4:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addq $1, %rcx<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0cmpq %rcx, %rdx<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_5<br class=3D"">
                =C2=A0=C2=A0.LBB3_2:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movzbl =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(%rsi), %edi<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movb %dil, (%rax,%rcx)<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0testb =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%dil, %dil<br class=3D""=
>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_4<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addq $1, %rsi<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jmp =C2=A0.LBB3_4<br class=3D"">
                =C2=A0=C2=A0.LBB3_5:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0retq<br class=3D"">
                <br class=3D"">
                and honestly, that's perfectly fine. It's very much what
                the code<br class=3D"">
                does. It's 44 bytes, it fits in one cacheline, it's not
                horrible. It's<br class=3D"">
                not what I would have done by hand, and clang seems a
                bit too eager to<br class=3D"">
                move the loop end test to the top of the loop, but
                whatever. I see<br class=3D"">
                nothing that makes me go "that's horrible".<br class=3D"">
              </blockquote>
              <br class=3D"">
              For the loop test, I know that clang will "rotate" loops
              in an attempt<br class=3D"">
              to have one canonical loop form. That way passes don't
              have to check<br class=3D"">
              for multiple different forms of loops if they're all in
              one form.<br class=3D"">
              This reduces compile time and complexity in the compiler.
              =C2=A0Does it<br class=3D"">
              always produce the most optimal loops? =C2=A0Is that what is
              going on here?<br class=3D"">
              I'm not sure.<br class=3D"">
              <br class=3D"">
              <blockquote type=3D"cite" class=3D""><br class=3D"">
                Now, admittedly it's not particularly *smart* either -
                you could turn<br class=3D"">
                the conditional "branch over a single constant add" into
                a computed<br class=3D"">
                add instead, so the<br class=3D"">
                <br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0testb =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%dil, %dil<br class=3D""=
>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_4<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addq $1, %rsi<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jmp =C2=A0.LBB3_4<br class=3D"">
                <br class=3D"">
                could - for example - have been done as<br class=3D"">
                <br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addb $255,%dil<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0adcq $0, %rsi<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jmp =C2=A0.LBB3_4<br class=3D"">
                <br class=3D"">
                which could avoid some branch mispredicts. =C2=A0And honest=
ly
                then the code<br class=3D"">
              </blockquote>
              <br class=3D"">
              Perhaps a peephole optimization we can add? (Does the adcq
              - add with<br class=3D"">
              carry - rely on whether the previous addb overflowed, ie.
              %dil was<br class=3D"">
              non-zero, replacing the testb+je pair? Did I understand
              that<br class=3D"">
              correctly?) =C2=A0Though we'd have to know that %dil wasn't
              used after<br class=3D"">
              taking the jump, since I think your transformed version
              modified %dil,<br class=3D"">
              so perhaps that can't be a peephole opt. Hmm.<br class=3D"">
              <br class=3D"">
              <blockquote type=3D"cite" class=3D"">that clang moved to the
                top should really have been at the bottom of<br class=3D"">
                the loop, but I don't know if it would matter. The above
                might look a<br class=3D"">
                bit more clever, but the data dependency might be worse
                if the branch<br class=3D"">
                predicts well. The branch behavior is bimodal - the loop
                starts out<br class=3D"">
                not taking that "je", and ends up taking it - so it has
                an almost<br class=3D"">
                guaranteed mispredict in the middle of the loop, but
                whatever. You win<br class=3D"">
                some, you lose some.<br class=3D"">
                <br class=3D"">
                ANYWAY.<br class=3D"">
                <br class=3D"">
                The above discussion is about *reasonable* code.<br
                  class=3D"">
                <br class=3D"">
                What clang actually generates bears very little
                resemblance to either<br class=3D"">
                the above simple and short, or the "clever and one
                conditional branch<br class=3D"">
                shorter" version.<br class=3D"">
                <br class=3D"">
                What clang actually generates is this horror:<br
                  class=3D"">
                <br class=3D"">
                =C2=A0=C2=A0strncpy:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movq %rdi, %rax<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0testq =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%rdx, %rdx<br class=3D""=
>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_19<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0leaq -1(%rdx), %r8<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movq %rdx, %r9<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0andq $3, %r9<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_2<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0xorl %edi, %edi<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jmp =C2=A0.LBB3_4<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0.p2align =C2=A0=C2=A0=C2=A0=C2=A04, 0x90<br class=3D"">
                =C2=A0=C2=A0.LBB3_6:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addq $1, %rdi<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0cmpq %rdi, %r9<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_7<br class=3D"">
                =C2=A0=C2=A0.LBB3_4:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movzbl =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(%rsi), %ecx<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movb %cl, (%rax,%rdi)<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0testb =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%cl, %cl<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_6<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addq $1, %rsi<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jmp =C2=A0.LBB3_6<br class=3D"">
                =C2=A0=C2=A0.LBB3_7:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0leaq (%rax,%rdi), %r9<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0subq %rdi, %rdx<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0cmpq $3, %r8<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jb =C2=A0=C2=A0.LBB3_19<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jmp =C2=A0.LBB3_9<br class=3D"">
                =C2=A0=C2=A0.LBB3_2:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movq %rax, %r9<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0cmpq $3, %r8<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jae =C2=A0.LBB3_9<br class=3D"">
                =C2=A0=C2=A0.LBB3_19:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0retq<br class=3D"">
                =C2=A0=C2=A0.LBB3_9:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0xorl %edi, %edi<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jmp =C2=A0.LBB3_10<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0.p2align =C2=A0=C2=A0=C2=A0=C2=A04, 0x90<br class=3D"">
                =C2=A0=C2=A0.LBB3_18:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addq $4, %rdi<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0cmpq %rdi, %rdx<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_19<br class=3D"">
                =C2=A0=C2=A0.LBB3_10:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movzbl =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(%rsi), %ecx<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movb %cl, (%r9,%rdi)<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0testb =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%cl, %cl<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_12<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addq $1, %rsi<br class=3D"">
                =C2=A0=C2=A0.LBB3_12:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movzbl =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(%rsi), %ecx<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movb %cl, 1(%r9,%rdi)<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0testb =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%cl, %cl<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_14<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addq $1, %rsi<br class=3D"">
                =C2=A0=C2=A0.LBB3_14:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movzbl =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(%rsi), %ecx<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movb %cl, 2(%r9,%rdi)<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0testb =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%cl, %cl<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_16<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addq $1, %rsi<br class=3D"">
                =C2=A0=C2=A0.LBB3_16:<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movzbl =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(%rsi), %ecx<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0movb %cl, 3(%r9,%rdi)<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0testb =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%cl, %cl<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0je =C2=A0=C2=A0.LBB3_18<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0addq $1, %rsi<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0jmp =C2=A0.LBB3_18<br class=3D"">
                <br class=3D"">
                which is 170 bytes in size instead of the 44 bytes, so
                now it takes up<br class=3D"">
                three cachelines.<br class=3D"">
                <br class=3D"">
                Now, I don't know how common this is. Maybe this is the
                only place in<br class=3D"">
                the kernel where this unrolling case happens. But in
                general, loop<br class=3D"">
                unrolling in the kernel is a big mistake unless it's a
                very obvious<br class=3D"">
                case (ie small constant full unroll makes perfect sense:
                if you see<br class=3D"">
                <br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (i =3D 0; i &l=
t; 4; i++)<br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*p++ =3D *q++;<br class=3D"">
                <br class=3D"">
                then you should most definitely unroll that to<br
                  class=3D"">
                <br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*p++ =3D *q++;<br=
 class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*p++ =3D *q++;<br=
 class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*p++ =3D *q++;<br=
 class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*p++ =3D *q++;<br=
 class=3D"">
                <br class=3D"">
                because it's simply smaller and simpler to not have any
                conditionals<br class=3D"">
                at all, and just do four iterations statically.<br
                  class=3D"">
                <br class=3D"">
                But the 'strncpy()' kind of unrolling is a mistake when
                kernel loops<br class=3D"">
                tend to have very low loop counts.<br class=3D"">
                <br class=3D"">
                As far as I know, gcc doesn't do any unrolling at -O2.<br
                  class=3D"">
              </blockquote>
              <br class=3D"">
              For clang, we will do limited unrolling at -O2, and very
              aggressive<br class=3D"">
              unrolling at -O3; if a loop can be fully unrolled, we're
              likely to do<br class=3D"">
              so at -O3, with a much smaller or more conservative unroll
              at -O2. =C2=A0I<br class=3D"">
              think I demonstrated that in this talk, if you have the
              time or are<br class=3D"">
              interested more in introspecting the compiler (yeah, yeah,
              ain't<br class=3D"">
              nobody got time for that): <a
                href=3D"https://youtu.be/bUTXhcf_aNc?t=3D1415" class=3D""
                moz-do-not-send=3D"true">https://youtu.be/bUTXhcf_aNc?t=3D1=
415</a><br
                class=3D"">
              <br class=3D"">
              My hypothesis here is that LLVM may not be considering
              -mno-sse2 and<br class=3D"">
              friends (ie. no floating at all, please) that the kernel
              uses when<br class=3D"">
              doing its simpler unrolling. =C2=A0If the monstrosity looks
              more compact<br class=3D"">
              with none of the -mno-sse2 and friends flags set, then
              that would lend<br class=3D"">
              itself to that hypothesis. =C2=A0IIRC, the middle end does lo=
op
              unrolling<br class=3D"">
              in a non-machine agnostic manner; it has to know what's
              the basic<br class=3D"">
              width of SIMD since we'd generally like to vectorize a
              loop after<br class=3D"">
              we've unrolled it, so the pass is aware of specifics of
              the target<br class=3D"">
              machine (this is exceptional to me; I understand why it's
              necessary,<br class=3D"">
              but generally the middle end optimizations are machine
              agnostic).<br class=3D"">
              Then later once we get to actual machine code generation
              for x86, we<br class=3D"">
              discover the constraints that we can't actually use any of
              the SSE<br class=3D"">
              registers and instead generate more verbose loop
              iterations using<br class=3D"">
              GPRs. =C2=A0Likely, the middle end unroller needs to check th=
at
              -sse2<br class=3D"">
              wasn't set BEFORE thinking it has the green light to
              unroll a loop x4.<br class=3D"">
              But it's just a hypothesis; I haven't validated it yet,
              and I could be<br class=3D"">
              wildly wrong.<br class=3D"">
              <br class=3D"">
              <blockquote type=3D"cite" class=3D""><br class=3D"">
                What is the magic to make clang not do stupid things
                like this? I<br class=3D"">
                obviously know about that<br class=3D"">
                <br class=3D"">
                =C2=A0=C2=A0=C2=A0#pragma nounroll<br class=3D"">
                <br class=3D"">
                but I don't want to mark various unimportant functions.
                I'd much<br class=3D"">
                rather have the default be "don't do stupid things", and
                then if we<br class=3D"">
                see a case where loop unrolling really matters, and it's
                important, we<br class=3D"">
                can mark *that* specially.<br class=3D"">
                <br class=3D"">
                Hmm?<br class=3D"">
                <br class=3D"">
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Linus<br class=3D"">
              </blockquote>
              <br class=3D"">
              <br class=3D"">
              <br class=3D"">
              -- <br class=3D"">
              Thanks,<br class=3D"">
              ~Nick Desaulniers<br class=3D"">
            </div>
          </div>
        </blockquote>
      </div>
      <br class=3D"">
    </blockquote>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/9e517b5d-f0e5-240a-2e3c-5cc24eda601e%40switchb=
ackcompilers.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goo=
gle.com/d/msgid/clang-built-linux/9e517b5d-f0e5-240a-2e3c-5cc24eda601e%40sw=
itchbackcompilers.com</a>.<br />

--------------10F690C6F9A92818FFB4484A--

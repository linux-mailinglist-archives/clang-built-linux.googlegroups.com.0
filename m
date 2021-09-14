Return-Path: <clang-built-linux+bncBC27HSOJ44LBBVVTQGFAMGQEBYX22DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B10B40A8F5
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 10:14:15 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id x14-20020ac2488e000000b003d91325c257sf4069895lfc.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 01:14:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631607255; cv=pass;
        d=google.com; s=arc-20160816;
        b=rDP6ny2USBI9ZFZr66470Y0sADLm0IL53W1p+TQd+UYNFM8ogkAjX0ZciEwQX/gs2h
         wSqyDOO9V2EW+qoI/lcAoATS5Bd0QJD4qBfK8WF6FAhTzPzHo+9cgiPQTb+BeYMFUNSh
         pOzwUp7u+W9fli/Q5T1ugXhX2is2IWMrkTC6d0ZN35xnKIZRPvuwkItc4AYNYy/e6LNX
         8NsLbP4Ovjy3q9ZPZnks67fXB3e6LSKQamnLbZUSDULRcUUHs9WV+5KZLA9CLTenunvG
         EAg3iS738/1ZwseNQqF0Rm8Fu9gDhpcX2U5FD7vHeYctZl5PlrA4DCcN2U2/DXLaRbXp
         fK1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:mime-version:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:sender:dkim-signature;
        bh=ypHM5qnb9i1DWBDhvpqUm4x7c3riVsbyKvuFa5R45DQ=;
        b=o27cPFecKrz9A4KUY4+cC8Gsuqtp/3MjFkJGHvj+oNRbEy8nZ5Lb6GHzm3em0nFkzq
         Z2p/pw2+FsWST01EB/VIuGszVIMWqVHCSefjj1Gp17OS7KaiMLEk69Ui7n1MJ7ujYmq7
         ZySGPvCAM0IrDWuMU8bKcANypBrIQFUsH9lcprumCgr+aclvkBa8gYmGUMOsLPoQiwI6
         BU8eaCd8st0kxio7hJuV032RuROGQi6pksA9EN7EpgzIv1L2wa3bo+/Va/LnUDYLqMYt
         ON1DQqTyIkiFwlwwLLlHtQuC0n7rOfnijSKvp1pzh61VxEtm5vs24F2Jt2OyZZ1EWh2v
         sq7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ypHM5qnb9i1DWBDhvpqUm4x7c3riVsbyKvuFa5R45DQ=;
        b=DOJEcdDu/SoKFIfoqLZl0ncDTAxz1Brl0YE5I0gESSu6SBO9zd/yCRLLZIbHqsVh3e
         mRejW+3ju0gLACVZ4Y9eFd7OKkxPtmxyv41BaMS8NtC7oyqnQ2JvI9euR97uACeWA5pt
         wXULV/Xx+aIByUxuOG3gU+8j5189IJUObxeCbU71eh8TPYPMELQ4y0d9VXbzaR++w8wx
         0LLUwW6BSIz8EozOQGcjhx2qRQwks09XkRDHlDBUOZ1pEpCYZiSuvc1dtwz0+sVbZdY7
         JwuDT/luBelfkyFgU2ff5iEo2NhOWfPW74imccUyANW7dQSsl9Em35Dd/nw7e/4vMV7w
         6HLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ypHM5qnb9i1DWBDhvpqUm4x7c3riVsbyKvuFa5R45DQ=;
        b=yHi5xyLb2Sv6f7FC8A0oYaAX21wIcBhy6B8fh//u0lmcqvC0UbgvafwzFPu2MaXBzx
         spKezvgdMb0kbzUpg/rWph3dUUCHwB2QEGES+XRzlVJMicmtZgEFUZCDGOXRhYu4RCgG
         t3+moqPjtmDqSpgAumgih9BfNpsx5OSTmiLLQyyop8CiEUGH7iLBfDocrYxTuJ/biSt9
         c9YG14iyfuWQ5rLwAs4ei/f2SRDW6eMKP0eiuP0S1AuGd9wARgQcN+QVDf54VkzWFHiB
         DEbFNROxa4drGVe34cq2CJ3PKRSpf8tLflxKZTntx/C1UzCoWaOqywUqdEuexSJgZyhf
         prQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vYr9AlmnMc+LT4iJFYJi9vYU4eA5S4UsYVUExDkwZqylo/+E0
	6u/6W80iSzJKYCg+e5riJC0=
X-Google-Smtp-Source: ABdhPJztHalYXpg2bQMOMo06xkLnuDuTB1szD1+Sp1T3suPnQGIrevoKsCT/AcMwt9M1G/Y8tR48qg==
X-Received: by 2002:a2e:9010:: with SMTP id h16mr14455446ljg.484.1631607255083;
        Tue, 14 Sep 2021 01:14:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:13a9:: with SMTP id p41ls133587lfa.0.gmail; Tue, 14
 Sep 2021 01:14:14 -0700 (PDT)
X-Received: by 2002:ac2:5ec4:: with SMTP id d4mr12053445lfq.127.1631607254117;
        Tue, 14 Sep 2021 01:14:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631607254; cv=none;
        d=google.com; s=arc-20160816;
        b=uNsBafJWbHbvgZ5Q8+x28xYwrBVRqH8lW4mCMnqjKOW1fVyelk2cTcMJBWZbFAYScD
         CvI9qUM0OZV7FQUJ/5q9DOUCkg+SUdNqGuucrsMAJqKeAvRz8dpM/T2/CW/WC7qQ+Dx0
         btVs4qpOmxHQYjOD8eFsLfHFEgdEh/y4y9akG06tNVh+PrMnBcKhGxxx5oerVXf8z06s
         LGZhg9UNZhYV3qnWWmeLHgEZn1Kh0soAI1d2yYeV7piVGUUff/Ti7Kzeq5038+ZJ9qkO
         Yx6xAW2yHRIV5a46PsZIMFax/RxhtcMRzHFzLZ6QiWXPFqNEwYgP0R0BqDK2Zt1guncX
         pA8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=SmzuHeMUYCv9pgRRK37sD9qeOCKTVWZPlxgl88tPR5Q=;
        b=OsDl4yW696nlOFk30IY+92KdPv7bu8v5DCIgeZuQyUK0+WCp1uDQobWNSDfcPaSl3s
         Y8PT+2mY+/UUXWnCXz3Beri0XPYnQ0qoacnv+HOfZJy32TCjoWUg33jrQXGLuTSGczSA
         Yuc7Prsj1sJKobwPyHAaFtLa6GyMQD9OGeMYMiFP5YtKB27PhXygiC5kstxTSXmr9nje
         8hW5E8vjr898Z/qPzVdC/4UgQ+6N/FQfa5ww+4IoUdiwO3Fp/H9QZ8jxwJBt+LOjyLnN
         ZS/IDLLRZ2hnN2Ci0ptk7umtVxV7zXyythjqs8f55wHy7FFUnRE5GxAFzF36bEKk3h5z
         XVJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id e14si979328lfs.11.2021.09.14.01.14.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Sep 2021 01:14:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-228-4zbg9E4KPh6_KsOvdYrc_g-1; Tue, 14 Sep 2021 09:14:12 +0100
X-MC-Unique: 4zbg9E4KPh6_KsOvdYrc_g-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.23; Tue, 14 Sep 2021 09:14:11 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.023; Tue, 14 Sep 2021 09:14:11 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: "'libaokun (A)'" <libaokun1@huawei.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Linus Torvalds <torvalds@linux-foundation.org>
CC: Arnd Bergmann <arnd@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Naresh Kamboju
	<naresh.kamboju@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>,
	open list <linux-kernel@vger.kernel.org>, linux-stable
	<stable@vger.kernel.org>, Hulk Robot <hulkci@huawei.com>, Josef Bacik
	<josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, Sasha Levin
	<sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>,
	"lkft-triage@lists.linaro.org" <lkft-triage@lists.linaro.org>,
	"llvm@lists.linux.dev" <llvm@lists.linux.dev>, Kees Cook
	<keescook@chromium.org>
Subject: RE: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in
 __nbd_ioctl()
Thread-Topic: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in
 __nbd_ioctl()
Thread-Index: AQHXqQ4eXbMSnUIpgkqOMblgrD/eTKujLcBA
Date: Tue, 14 Sep 2021 08:14:10 +0000
Message-ID: <27e1c6de36354620aaf8ed5a5fa944de@AcuMS.aculab.com>
References: <20210913131113.390368911@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com>
 <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
 <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
 <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com>
 <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com>
 <CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA@mail.gmail.com>
 <CAHk-=wjP2ijctPt2Hw3DagSZ-KgdRsO6zWTTKQNnSk0MajtJgA@mail.gmail.com>
 <CAKwvOd=ZG8sf1ZOkuidX_49VGkQE+BJDa19_vR4gh2FNQ2F_9Q@mail.gmail.com>
 <CAKwvOdkz4e3HdNKFvOdDDWVijB7AKaeP14_vAEbxWXD1AviVhA@mail.gmail.com>
 <CAKwvOdmtX8Y8eWESYj4W-H-KF7cZx6w1NbSjoSPt5x5U9ezQUQ@mail.gmail.com>
 <CAHk-=whjhJgk7hD-ftUy-8+9cenhMDHqaNKXOyeNVoMxZRD-_A@mail.gmail.com>
 <CAKwvOdnFRhKDZ3XuePSGsuxhOpuS5RmZ1u+MeN=PRPPKSS3wFg@mail.gmail.com>
 <db321a38-f5f6-34cd-2f4f-37fc82201798@huawei.com>
In-Reply-To: <db321a38-f5f6-34cd-2f4f-37fc82201798@huawei.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

Li4uDQo+ICDCoMKgwqDCoMKgwqDCoCBjYXNlIE5CRF9TRVRfU0laRToNCj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gbmJkX3NldF9zaXplKG5iZCwgYXJnLCBjb25maWct
PmJsa3NpemUpOw0KPiAgwqDCoMKgwqDCoMKgwqAgY2FzZSBOQkRfU0VUX1NJWkVfQkxPQ0tTOg0K
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoY2hlY2tfbXVsX292ZXJmbG93KChs
b2ZmX3QpYXJnLCBjb25maWctPmJsa3NpemUsDQo+ICZieXRlc2l6ZSkpDQo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmIChhcmcgJiYgKExMT05HX01BWCAvIGFyZyA8PSBjb25maWct
PmJsa3NpemUpKQ0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gLUVJTlZBTDsNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIG5iZF9zZXRfc2l6ZShuYmQsIGJ5dGVzaXplLCBjb25maWctPmJsa3NpemUpOw0KPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gbmJkX3NldF9zaXplKG5iZCwgYXJnICog
Y29uZmlnLT5ibGtzaXplLA0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uZmlnLT5ibGtzaXplKTsNCg0KU2hv
dWxkbid0IHRoZXJlIGp1c3QgYmUgc2FuaXR5IGJvdW5kIGNoZWNrcyBvbiAnY29uZmlnLT5ibGtz
aXplJyBhbmQNCidhcmcnIHNvIHRoYXQgdGhlIHByb2R1Y3QgaXMgbmV2ZXIgZ29pbmcgdG8gb3Zl
cmZsb3c/DQoNCkl0IGlzbid0IGFzIHRob3VnaCBhbnkgdmFsdWVzIG5lYXIgdGhlIG92ZXJmbG93
IGxpbWl0IGFyZSBzYW5lLg0KDQpJIHN1c3BlY3QgeW91IGNvdWxkIGNoZWNrIGNvbmZpZy0+Ymxr
c2l6ZSA8PSA2NGsgJiYgYXJnIDw9IDMyaw0KYW5kIGV2ZW4gdGhhdCB3b3VsZCBiZSBnZW5lcm91
cy4NCg0KCURhdmlkDQoNCi0NClJlZ2lzdGVyZWQgQWRkcmVzcyBMYWtlc2lkZSwgQnJhbWxleSBS
b2FkLCBNb3VudCBGYXJtLCBNaWx0b24gS2V5bmVzLCBNSzEgMVBULCBVSw0KUmVnaXN0cmF0aW9u
IE5vOiAxMzk3Mzg2IChXYWxlcykNCg0KLS0gCllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVj
YXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgIkNsYW5nIEJ1aWx0
IExpbnV4IiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJl
Y2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBjbGFuZy1idWlsdC1saW51
eCt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBv
biB0aGUgd2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9jbGFuZy1i
dWlsdC1saW51eC8yN2UxYzZkZTM2MzU0NjIwYWFmOGVkNWE1ZmE5NDRkZSU0MEFjdU1TLmFjdWxh
Yi5jb20uCg==

Return-Path: <clang-built-linux+bncBDRZXY4CYYORBWNE7OCAMGQEWKQJWPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 548F6381107
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 21:41:15 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id pc17-20020a17090b3b91b029015b064cea0asf423492pjb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 12:41:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621021274; cv=pass;
        d=google.com; s=arc-20160816;
        b=GbujKMVTEeifl4eAyk2VciMfXs6Z/gQCebOdRSznsPZKSSOM+VVTOF7hbr83a3tZJ1
         tBXnA42P0kjcFV02vUuctYspXB7vgzlB9yRUm/Ata1T+FdcsJ+YY9GxdZtFazcxx4HYF
         XA7CVmEY7x7GcxcFQXh/ZUtv/bvInuGsMKXjaMchhSMqcvntjO9yf379Rvc2rIK9zIMY
         pVYY7AN/v1azzjsdP4iOInj1CTKd3Sh18iSrsgnIPBaq5qYxOk/9Me9wt1XAAOdhzrCH
         XZfwDACgeqwisPnRmGqgWunVCPH6owEi5AydjGlmIlOch7rBTS4HaOkx7IjObFQlfDYb
         QaoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=dIie8UJke2nP7V1+gHbJ0SVGUegel9d0DB3KiPbSJus=;
        b=nmelFP0pLeU4sJPW4sHdHtZIJg7JE1oo8xUKsjVM0qIjIfBWanctC7xvll5MQwI8gs
         imWMn+bVxtbKIiGaT4I2ajXpa+8ijcRgLl+D8+mR/scvu1xMsbQcsKTuwqFVhvpsWBK9
         Dql871/j4P8BRyK22TM88NkLx2vYub34zBA0yd+B+jEK5azR+q3aMf5wvKEsNscHkO32
         a97V5iKsG0i4gPYy52FJGtcKocivteGxhVF/0VFnSgYA3BlP5Ba7WfUbhUWOhWeSodBk
         WPCGJgZVgjYxuAUZYvVbvp4ACZPcuPTM3B9kI7G1abbNOp1JNJAvOFcZUCn42Ck54pxo
         71GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G0owN1xv;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dIie8UJke2nP7V1+gHbJ0SVGUegel9d0DB3KiPbSJus=;
        b=flEx6lhkPU48suEr8uOAkkRtKds+4Scynd5qy0nnAtGlWYynSr0Ag4+rzrcIjJ2WaL
         QOdMEiR80ygSBYRbGSlK69p4bdrOYwwu9Oma8S21e/5CD3roIH3EBxETvZ8ZjSqGE493
         nuO7Ul2Y96oJ2g1B+aKaDA+7lQvdlqjNpBUm/PJ5yr/RQ8Yz9ruWcwmnodSERhHJMM0P
         V7H4aBlk7+caD5v2iI46szpaL3R1HFi2HhXuqWa+9BYBXVs7R0O5Ih3FmOvGeRBMqJk7
         eWU3bvwGBwJazDCQ1zyNbJ1HFpfm4PfLuBe1olq+aF29pHYg59iFG8jz7YskfLT0gUpT
         V0sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dIie8UJke2nP7V1+gHbJ0SVGUegel9d0DB3KiPbSJus=;
        b=UKzKx3ajOosQ/2PLViPpd5fjlc83K3SSCAO1i+OzxtuKpLa3fhy1MOo4rMrtIgO1V9
         IfwzrhPtffWPSaTKo0bLJ9CUKB07oPfp874qHoafhwcgnv5xz7lv/Hv5380i5ek7sPvG
         l7kPJG994RmPSUqkTWZ2lOOZ2NSgQUDY+6CvpS5jOMjKh0pzBSt9AlJP1UxddUGvPSQc
         svwFRZwwLQHB+HjfH0uFX5UF2/ya0vSyTj5UpxTca1AZkEfU4ujuiXL1XdMJF/2DXWvz
         EWpoV0pYQKkqBV6H4zZc7EUtD0t0hkG3yQvo3HT7CeE/CfSz6+fwPyxbMBqBZG60RJgh
         amfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Eyu+PtgQaSnxr4eMi5H0WsWi0eDnH3bQTZZRJ/9HEE6S4Cvdy
	gLl80Zx+teehBDwvfpAwgoQ=
X-Google-Smtp-Source: ABdhPJy/5p8fXVaX5o5q9eJCbAEas7FukDN6/3sa7PjNUjF3e/9b353Wz/TME1z3fE7ZOMuOPkj8zQ==
X-Received: by 2002:a17:902:b903:b029:ed:4a5e:6bf7 with SMTP id bf3-20020a170902b903b02900ed4a5e6bf7mr47000075plb.82.1621021274044;
        Fri, 14 May 2021 12:41:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:530e:: with SMTP id h14ls4549710pgb.11.gmail; Fri, 14
 May 2021 12:41:13 -0700 (PDT)
X-Received: by 2002:a63:6f4e:: with SMTP id k75mr13527108pgc.434.1621021273383;
        Fri, 14 May 2021 12:41:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621021273; cv=none;
        d=google.com; s=arc-20160816;
        b=f0yO5prqcaA6kRf/blaVGCLJuwtOud1l1bLPWiz5+K0nIZnEwHKfzY6PilK9D0iD7o
         Tm9fHhVsTRZUyTnMHsI3WtGUbdW/CRVKEe6lrLiAcC6AQTLC2vC8KutUAayOsZCfOXJd
         scSqTUTk7eipqzZo/R6TOqRMB0sWXtG0O7DBm8AuiQaIlbyteXsTSWjSzLjkrMcqW//y
         BEpj2UOOiuKQRtFEMuzhbS/wBi1sMnWlLJlHqxFHHdLUy+Mq4SovChrp3XuLIm4q+xEI
         XuzgIyUmNuGz6kXJ8sAkLCMFD5CIGXoZIPEtxZgRm/5C/cxu91gZsI4tmyneBvs6/FdP
         zGjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=OzBTlwulT81O7/ztY2Ct0OPTesVialDVF2p2RnNAlMc=;
        b=wU1Hp3F+/WmWjGHLNVnjEU8+d6k+TCcGbEQPI9g7Vcym98LUNLFXvpPrMtFJfrBUUV
         nVZ770uKb33i2wOcKxmr6TxaxzOj7A1ymwXlSg+traX5bqFLdowzs2akwhyNTEtgdKu+
         gs4AzJ/EHaaI7X7D9E5otu55LbMUYDV6fD0WvRZLaUKQbquXYYJ5TLFUwhFOn1RyyEDv
         DcraWnG42/pEaONskwdF1YEO4hUujVazz5411Vy96mwyirbhW0v/Lg1wYce17DKWDUCJ
         EzMBJru/ojj0kB3SA8ygcCiN+jjsX7c0rPIJmg6P9peDZxjYyHsnlBC3cFG82EVAbm8Q
         D4KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G0owN1xv;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id x27si252912pfu.0.2021.05.14.12.41.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 12:41:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-315-kQfhGC1qPB22y9hMDyGGRQ-1; Fri, 14 May 2021 15:41:10 -0400
X-MC-Unique: kQfhGC1qPB22y9hMDyGGRQ-1
Received: by mail-ed1-f69.google.com with SMTP id n6-20020a0564020606b029038cdc241890so3386973edv.20
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 12:41:09 -0700 (PDT)
X-Received: by 2002:a17:906:2546:: with SMTP id j6mr50105465ejb.51.1621021268147;
        Fri, 14 May 2021 12:41:08 -0700 (PDT)
X-Received: by 2002:a17:906:2546:: with SMTP id j6mr50105445ejb.51.1621021267928;
        Fri, 14 May 2021 12:41:07 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id k9sm4335048eje.102.2021.05.14.12.41.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 12:41:07 -0700 (PDT)
Subject: Re: [PATCH] platform/surface: aggregator: shut up clang
 -Wconstantn-conversion warning
From: Hans de Goede <hdegoede@redhat.com>
To: Maximilian Luz <luzmaximilian@gmail.com>, Arnd Bergmann
 <arnd@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514140556.3492544-1-arnd@kernel.org>
 <219848ed-e0ce-634a-29c2-caca813b054c@gmail.com>
 <42f70914-e46c-20b9-6b13-8e8d855112a9@redhat.com>
Message-ID: <29d069f2-a1c8-eb43-02ec-69c86b3cb107@redhat.com>
Date: Fri, 14 May 2021 21:41:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <42f70914-e46c-20b9-6b13-8e8d855112a9@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: base64
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=G0owN1xv;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

SGksDQoNCk9uIDUvMTQvMjEgOTozOCBQTSwgSGFucyBkZSBHb2VkZSB3cm90ZToNCj4gSGksDQo+
IA0KPiBPbiA1LzE0LzIxIDQ6MjEgUE0sIE1heGltaWxpYW4gTHV6IHdyb3RlOg0KPj4gT24gNS8x
NC8yMSA0OjA1IFBNLCBBcm5kIEJlcmdtYW5uIHdyb3RlOg0KPj4+IEZyb206IEFybmQgQmVyZ21h
bm4gPGFybmRAYXJuZGIuZGU+DQo+Pj4NCj4+PiBDbGFuZyBjb21wbGFpbnMgYWJvdXQgdGhlIGFz
c2lnbm1lbnQgb2YgU1NBTV9BTllfSUlEIHRvDQo+Pj4gc3NhbV9kZXZpY2VfdWlkLT5pbnN0YW5j
ZToNCj4+Pg0KPj4+IGRyaXZlcnMvcGxhdGZvcm0vc3VyZmFjZS9zdXJmYWNlX2FnZ3JlZ2F0b3Jf
cmVnaXN0cnkuYzo0Nzg6MjU6IGVycm9yOiBpbXBsaWNpdCBjb252ZXJzaW9uIGZyb20gJ2ludCcg
dG8gJ19fdTgnIChha2EgJ3Vuc2lnbmVkIGNoYXInKSBjaGFuZ2VzIHZhbHVlIGZyb20gNjU1MzUg
dG8gMjU1IFstV2Vycm9yLC1XY29uc3RhbnQtY29udmVyc2lvbl0NCj4+PiDCoMKgwqDCoMKgwqDC
oMKgIHsgU1NBTV9WREVWKEhVQiwgMHgwMiwgU1NBTV9BTllfSUlELCAweDAwKSB9LA0KPj4+IMKg
wqDCoMKgwqDCoMKgwqAgfsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBefn5+fn5+fn5+fn4NCj4+PiBpbmNsdWRlL2xpbnV4L3N1cmZhY2VfYWdncmVnYXRvci9kZXZp
Y2UuaDo3MToyMzogbm90ZTogZXhwYW5kZWQgZnJvbSBtYWNybyAnU1NBTV9BTllfSUlEJw0KPj4+
IMKgICNkZWZpbmUgU1NBTV9BTllfSUlEwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweGZmZmYNCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIF5+fn5+fg0KPj4+IGluY2x1ZGUvbGludXgvc3VyZmFjZV9hZ2dyZWdhdG9yL2Rl
dmljZS5oOjEyNjo2Mzogbm90ZTogZXhwYW5kZWQgZnJvbSBtYWNybyAnU1NBTV9WREVWJw0KPj4+
IMKgwqDCoMKgwqDCoMKgwqAgU1NBTV9ERVZJQ0UoU1NBTV9ET01BSU5fVklSVFVBTCwgU1NBTV9W
SVJUVUFMX1RDXyMjY2F0LCB0aWQsIGlpZCwgZnVuKQ0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBefn4NCj4+PiBpbmNsdWRlL2xpbnV4L3N1cmZhY2VfYWdncmVnYXRvci9kZXZpY2UuaDox
MDI6NDE6IG5vdGU6IGV4cGFuZGVkIGZyb20gbWFjcm8gJ1NTQU1fREVWSUNFJw0KPj4+IMKgwqDC
oMKgwqDCoMKgwqAgLmluc3RhbmNlID0gKChpaWQpICE9IFNTQU1fQU5ZX0lJRCkgPyAoaWlkKSA6
IDAswqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcDQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBefn4NCj4+Pg0KPj4+IFRoZSBh
c3NpZ25tZW50IGRvZXNuJ3QgYWN0dWFsbHkgaGFwcGVuLCBidXQgY2xhbmcgY2hlY2tzIHRoZSB0
eXBlIGxpbWl0cw0KPj4+IGJlZm9yZSBjaGVja2luZyB3aGV0aGVyIHRoaXMgYXNzaWdubWVudCBp
cyByZWFjaGVkLiBTaHV0IHVwIHRoZSB3YXJuaW5nDQo+Pj4gdXNpbmcgYW4gZXhwbGljaXQgdHlw
ZSBjYXN0Lg0KPj4NCj4+IEknbSBub3QgdG9vIGhhcHB5IGFib3V0IHRoaXMgZml4IGFzIChJIGJl
bGlldmUpIGl0IHdpbGwgYWxzbyBzaHV0IHVwIGFueQ0KPj4gdmFsaWQgR0NDIGVycm9yIG1lc3Nh
Z2UgaW4gY2FzZSB0aG9zZSBtYWNyb3MgYXJlIHVzZWQgd2l0aCBub24tdTggKGFuZA0KPj4gbm9u
LVNTQU1fQU5ZX3h4eCkgdmFsdWVzLg0KPiANCj4gU2luY2UgeW91J3JlIHRoZSBtYWludGFpbmVy
IG9mIHRoaXMgY29kZSwgSSdsbCBnbyB3aXRoIHlvdXIganVkZ2VtZW50IGhlcmUsDQoNCnAucy4N
Cg0KSSBqdXN0IHdlbnQgdG8gcGF0Y2h3b3JrIHRvIGRyb3AgdGhpcyBwYXRjaCBmcm9tIHRoZSBx
dWV1ZToNCg0KaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWNhdC9wbGF0Zm9ybS1k
cml2ZXIteDg2L2xpc3QvDQoNCkJ1dCBpdCBuZXZlciBnb3QgYWRkZWQgdGhlcmUgYmVjYXVzZSBw
bGF0Zm9ybS1kcml2ZXIteDg2QHZnZXIua2VybmVsLm9yZw0Kd2FzIG1pc3NpbmcgZnJvbSB0aGUg
Q2MgZXZlbiB0aG91Z2ggZ2V0X21haW50YWluZXIucGwgbGlzdHMgaXQuDQoNClJlZ2FyZHMsDQoN
CkhhbnMNCg0KDQoNCg0KPj4gSSdsbCBsZXQgb3RoZXJzIGp1ZGdlIGFuZCBkZWNpZGUgd2hhdCdz
IHByZWZlcnJlZCwgaG93ZXZlci4NCj4+DQo+PiBJbiBjYXNlIHlvdSdyZSBkZWNpZGluZyB0byBh
cHBseSB0aGlzLCBmZWVsIGZyZWUgdG8gYWRkOg0KPj4NCj4+IFJldmlld2VkLWJ5OiBNYXhpbWls
aWFuIEx1eiA8bHV6bWF4aW1pbGlhbkBnbWFpbC5jb20+DQo+Pg0KPj4gVGhhbmtzLA0KPj4gTWF4
DQo+Pg0KPj4+IEZpeGVzOiBlYjBlOTBhODIwOTggKCJwbGF0Zm9ybS9zdXJmYWNlOiBhZ2dyZWdh
dG9yOiBBZGQgZGVkaWNhdGVkIGJ1cyBhbmQgZGV2aWNlIHR5cGUiKQ0KPj4+IFNpZ25lZC1vZmYt
Ynk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+DQo+Pj4gLS0tDQo+Pj4gwqAgaW5jbHVk
ZS9saW51eC9zdXJmYWNlX2FnZ3JlZ2F0b3IvZGV2aWNlLmggfCA2ICsrKy0tLQ0KPj4+IMKgIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9zdXJmYWNlX2FnZ3JlZ2F0b3IvZGV2aWNlLmggYi9p
bmNsdWRlL2xpbnV4L3N1cmZhY2VfYWdncmVnYXRvci9kZXZpY2UuaA0KPj4+IGluZGV4IDQ0NDFh
ZDY2N2MzZi4uOTBkZjA5MmVkNTY1IDEwMDY0NA0KPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvc3Vy
ZmFjZV9hZ2dyZWdhdG9yL2RldmljZS5oDQo+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9zdXJmYWNl
X2FnZ3JlZ2F0b3IvZGV2aWNlLmgNCj4+PiBAQCAtOTgsOSArOTgsOSBAQCBzdHJ1Y3Qgc3NhbV9k
ZXZpY2VfdWlkIHsNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgKCgoZnVuKSAh
PSBTU0FNX0FOWV9GVU4pID8gU1NBTV9NQVRDSF9GVU5DVElPTiA6IDApLMKgwqDCoCBcDQo+Pj4g
wqDCoMKgwqDCoCAuZG9tYWluwqDCoCA9IGQswqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXA0KPj4+IMKgwqDCoMKgwqAgLmNhdGVn
b3J5ID0gY2F0LMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBcDQo+Pj4gLcKgwqDCoCAudGFyZ2V0wqDCoCA9ICgodGlkKSAhPSBTU0FNX0FOWV9U
SUQpID8gKHRpZCkgOiAwLMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXA0KPj4+IC3CoMKgwqAgLmlu
c3RhbmNlID0gKChpaWQpICE9IFNTQU1fQU5ZX0lJRCkgPyAoaWlkKSA6IDAswqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBcDQo+Pj4gLcKgwqDCoCAuZnVuY3Rpb24gPSAoKGZ1bikgIT0gU1NBTV9BTllf
RlVOKSA/IChmdW4pIDogMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcDQo+Pj4gK8Kg
wqDCoCAudGFyZ2V0wqDCoCA9ICgodGlkKSAhPSBTU0FNX0FOWV9USUQpID8gKHU4KSh0aWQpIDog
MCzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwNCj4+PiArwqDCoMKgIC5pbnN0YW5jZSA9ICgoaWlk
KSAhPSBTU0FNX0FOWV9JSUQpID8gKHU4KShpaWQpIDogMCzCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IFwNCj4+PiArwqDCoMKgIC5mdW5jdGlvbiA9ICgoZnVuKSAhPSBTU0FNX0FOWV9GVU4pID8gKHU4
KShmdW4pIDogMMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXA0KPj4+IMKgIMKgIC8qKg0KPj4+IMKg
wqAgKiBTU0FNX1ZERVYoKSAtIEluaXRpYWxpemUgYSAmc3RydWN0IHNzYW1fZGV2aWNlX2lkIGFz
IHZpcnR1YWwgZGV2aWNlIHdpdGgNCj4+Pg0KPj4NCg0KLS0gCllvdSByZWNlaXZlZCB0aGlzIG1l
c3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgIkNs
YW5nIEJ1aWx0IExpbnV4IiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFu
ZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBjbGFuZy1i
dWlsdC1saW51eCt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlz
Y3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dp
ZC9jbGFuZy1idWlsdC1saW51eC8yOWQwNjlmMi1hMWM4LWViNDMtMDJlYy02OWM4NmIzY2IxMDcl
NDByZWRoYXQuY29tLgo=

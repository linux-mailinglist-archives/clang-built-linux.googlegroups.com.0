Return-Path: <clang-built-linux+bncBDRZXY4CYYORBUND7OCAMGQEYHPMG2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id A60853810FF
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 21:38:58 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id g93-20020a9d2de60000b02902e3d740ec6asf89508otb.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 12:38:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621021137; cv=pass;
        d=google.com; s=arc-20160816;
        b=z4tyC8yymG+RrfkZ454Jql6v0+lEZ6TocDQjrYCxmJd0RX54PBPYsVH5WE/ghAmN97
         p0k5X6Z14pVts0RgOP5qKcSkIAuFLX9De5RJyqd39+7PO9N5w1w0AUoTrWtN/yPxTtaJ
         c1mpzYC2qJfVMAKJtFjj/jJb8s4nS1g7C+wKhIO9U+j4zvmRae3NhwZTt3ccnH43VBzS
         gp8D1W4aIewNxDP0HbTVB7KFoUZGN9BiLr51GHYo83031c+FleKW6zER7TAYg11NRG52
         JmHvOZ1ua28nTzRPQ9/ug4mu4+2qhFHUAVh35qxUrfn3wW9BALwmTxrIouDK/hf+BztK
         PWJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=X0WVQyJlgofUUmbKLvPL5kFxLlr+2rHh2ND8SIotaAc=;
        b=z/OD56BgaHYaAKI/Mf1w+vZVYxKfOu6F8QbJbEgRGIKYGXlh7Kbzo6P5EQZP9VURVh
         B3vbeVkAsFRYS6xN30kGw78csPrGUAicxJwRnEFO03j6OagLeFRQ0YF61qqCgyIBdicU
         nrRFlkhRkdTPzA+ZfHYtU1wi/zxtzYAq5jsMNcsQCcJLDXC3ilv+AqauJyCb61T3GXz4
         lK1ITWiH/18rksY3PhNmwyjwFYK1/094uuMHKavf80Ht/GhkaxF8bao1PEbHzFt9yxFN
         WnRsWsPWI4RNLayA0CJilUNwaYYu4sSS+lhPnrLPykzfrJra0hZf8Dn+hHRU355bxdmG
         2Luw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HLQJMxDY;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X0WVQyJlgofUUmbKLvPL5kFxLlr+2rHh2ND8SIotaAc=;
        b=tn8w3RbKubQDoN5nmhdPEp70Z64qzhLw75nP1R79r/WQLqcavxlxmeN/ovHf2f5WwV
         9xLmby/1VR1NgK47SZ1J7plBi0T3ZeWwO1ugildIIVjJg5CDB5HZOw1/JOXYQyWzoJTx
         Eqsb87q7H332nvhLu7y1YaNCiz/+n1Ip8UKXOLbbPEFX9KJ9Cyb/fS/dGQJUGouJSgpB
         onG0RshugvNCk2NNhOQfBR1I3tuYdWmMoyZPJGfZD/n3oZ+aENhLSRvU6C/M6jTyd2pj
         A1E7Cpz4isr96qir0iChsiXhNDCaPzaP16NcsUXq929JuTYFwpE9BC3BN7Q7O65Z/Yzr
         onRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X0WVQyJlgofUUmbKLvPL5kFxLlr+2rHh2ND8SIotaAc=;
        b=TUA2pcf3pNT68kOPdNA7O/P6Y58kJPs/5GaNTKo7aewHY8IJBjBpdFI9gGMzayFPJI
         lXfPmdIEUchLP/qogdrXjiHPYaIKbb80tcNd0CSX2hKvlxEbrfFJbMH+It6UrlmdFRO3
         OkYLkr6GvlMxczeHiLFkWqcfNe24c9ElkUcrJZVWA741Peoz6KceqkrF//MxkwPi39l/
         J7AbCIkfjs8hiEuucjN2xIfvk+fL8n6fszXJ9iIU9/oDB1YYT31TKpKZ7nShf5Sg7I8t
         EMMMVSPljlZW9GzBtN/OBIv9QR9ovDIEFNehJTyq6tbVRCcssKNST9Avp7Cj8kMaVqKP
         HbOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zEQ5usMSWtvx8sKAYk/2adeK6e4KksG1W4u2cqu27GwTp+lXV
	enWeaaObZWkz0F+C5nwf5f0=
X-Google-Smtp-Source: ABdhPJx2QUEYsM+1QBCjGnWe6MfuWkh3NyVkb/pbM5mQKAmtnniKNmTRaQVcDmzSe63SZDRyuMVp2g==
X-Received: by 2002:a4a:8f83:: with SMTP id c3mr814156ooj.17.1621021137637;
        Fri, 14 May 2021 12:38:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d487:: with SMTP id l129ls2657754oig.11.gmail; Fri, 14
 May 2021 12:38:57 -0700 (PDT)
X-Received: by 2002:aca:47d2:: with SMTP id u201mr7785916oia.19.1621021137238;
        Fri, 14 May 2021 12:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621021137; cv=none;
        d=google.com; s=arc-20160816;
        b=JWd/fDFgb01R8cLLWmxRevCgyLwzFvc2bz0CTntr48fWKLiVy0e9sOkxnGye65YSO2
         eVsREEcQ9WvGOcaZo+H7qpccp2fyHvkXrwxZGmSEdAOpiE9Fod4zZors64bhS6TaI9bl
         E5yyBfefP8ocVmm0/KT9UmgL+mIWMpcUm+LwmqW8djFAB/+KKYhbG5sP0bSMua23CYtg
         eMrIbddPft+ajBeU0lVAZ2pvCV+/nSwyZvjQgZoyyJLshcvYG9zaCHOYBmVD/xO1VTUl
         JtfGPx+9FBglEW9I4uKbLgdR0BjGcwrL1ZKEUoGcq2pjKp1ZqxzRM3Jly6uCPXPsYn+s
         G3HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=n3eS6dFP/l+SjyRuIac1mzIE1FjrsSLw//aWNcd2Go8=;
        b=pyU6nMDBVo6YtAOcuA5zAZRQ5tTW1Vd/OFuvT3jzb/SuIaq4of3sZDiCRbnqheq/A7
         dDUVzj0LdwKYfO8QBm5VG/DsoA3Wp9IP50na2Kq5BZjp1vvBEbeTv/W34g2ihC+DSW64
         HsPCxrdsuRqS4AZ2yzoIIdRkZx5oW8p6BTTHzHflHHztLeyILEaMAoZlBI3khM9IbYeX
         r9/no3Hhc9wHB7GTomE4VbfVa/ZoKwb2oWODHTZW6/bMFpOjuMKay4RWUbR382DO2jfk
         4jXh6argw3F5j9a1z3IFMaAc6yr0KlyF8u2A1LRS/M36xRYaJi9MdVJBU8MMxlKiHn9m
         0LWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HLQJMxDY;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id c4si796391oto.0.2021.05.14.12.38.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 12:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-419-gBXu3o_rPYCg9QvnPwhFZA-1; Fri, 14 May 2021 15:38:55 -0400
X-MC-Unique: gBXu3o_rPYCg9QvnPwhFZA-1
Received: by mail-ed1-f70.google.com with SMTP id h16-20020a0564020950b029038cbdae8cbaso5403243edz.6
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 12:38:55 -0700 (PDT)
X-Received: by 2002:a17:906:7ac9:: with SMTP id k9mr51242158ejo.229.1621021133828;
        Fri, 14 May 2021 12:38:53 -0700 (PDT)
X-Received: by 2002:a17:906:7ac9:: with SMTP id k9mr51242129ejo.229.1621021133536;
        Fri, 14 May 2021 12:38:53 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id r15sm4894271edp.62.2021.05.14.12.38.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 12:38:53 -0700 (PDT)
Subject: Re: [PATCH] platform/surface: aggregator: shut up clang
 -Wconstantn-conversion warning
To: Maximilian Luz <luzmaximilian@gmail.com>, Arnd Bergmann
 <arnd@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514140556.3492544-1-arnd@kernel.org>
 <219848ed-e0ce-634a-29c2-caca813b054c@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <42f70914-e46c-20b9-6b13-8e8d855112a9@redhat.com>
Date: Fri, 14 May 2021 21:38:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <219848ed-e0ce-634a-29c2-caca813b054c@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: base64
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=HLQJMxDY;
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

SGksDQoNCk9uIDUvMTQvMjEgNDoyMSBQTSwgTWF4aW1pbGlhbiBMdXogd3JvdGU6DQo+IE9uIDUv
MTQvMjEgNDowNSBQTSwgQXJuZCBCZXJnbWFubiB3cm90ZToNCj4+IEZyb206IEFybmQgQmVyZ21h
bm4gPGFybmRAYXJuZGIuZGU+DQo+Pg0KPj4gQ2xhbmcgY29tcGxhaW5zIGFib3V0IHRoZSBhc3Np
Z25tZW50IG9mIFNTQU1fQU5ZX0lJRCB0bw0KPj4gc3NhbV9kZXZpY2VfdWlkLT5pbnN0YW5jZToN
Cj4+DQo+PiBkcml2ZXJzL3BsYXRmb3JtL3N1cmZhY2Uvc3VyZmFjZV9hZ2dyZWdhdG9yX3JlZ2lz
dHJ5LmM6NDc4OjI1OiBlcnJvcjogaW1wbGljaXQgY29udmVyc2lvbiBmcm9tICdpbnQnIHRvICdf
X3U4JyAoYWthICd1bnNpZ25lZCBjaGFyJykgY2hhbmdlcyB2YWx1ZSBmcm9tIDY1NTM1IHRvIDI1
NSBbLVdlcnJvciwtV2NvbnN0YW50LWNvbnZlcnNpb25dDQo+PiDCoMKgwqDCoMKgwqDCoMKgIHsg
U1NBTV9WREVWKEhVQiwgMHgwMiwgU1NBTV9BTllfSUlELCAweDAwKSB9LA0KPj4gwqDCoMKgwqDC
oMKgwqDCoCB+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5+fn5+
fn5+fn5+fg0KPj4gaW5jbHVkZS9saW51eC9zdXJmYWNlX2FnZ3JlZ2F0b3IvZGV2aWNlLmg6NzE6
MjM6IG5vdGU6IGV4cGFuZGVkIGZyb20gbWFjcm8gJ1NTQU1fQU5ZX0lJRCcNCj4+IMKgICNkZWZp
bmUgU1NBTV9BTllfSUlEwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweGZmZmYNCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Xn5+fn5+DQo+PiBpbmNsdWRlL2xpbnV4L3N1cmZhY2VfYWdncmVnYXRvci9kZXZpY2UuaDoxMjY6
NjM6IG5vdGU6IGV4cGFuZGVkIGZyb20gbWFjcm8gJ1NTQU1fVkRFVicNCj4+IMKgwqDCoMKgwqDC
oMKgwqAgU1NBTV9ERVZJQ0UoU1NBTV9ET01BSU5fVklSVFVBTCwgU1NBTV9WSVJUVUFMX1RDXyMj
Y2F0LCB0aWQsIGlpZCwgZnVuKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5+fg0KPj4g
aW5jbHVkZS9saW51eC9zdXJmYWNlX2FnZ3JlZ2F0b3IvZGV2aWNlLmg6MTAyOjQxOiBub3RlOiBl
eHBhbmRlZCBmcm9tIG1hY3JvICdTU0FNX0RFVklDRScNCj4+IMKgwqDCoMKgwqDCoMKgwqAgLmlu
c3RhbmNlID0gKChpaWQpICE9IFNTQU1fQU5ZX0lJRCkgPyAoaWlkKSA6IDAswqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcDQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5+fg0KPj4NCj4+IFRoZSBhc3NpZ25tZW50IGRvZXNuJ3Qg
YWN0dWFsbHkgaGFwcGVuLCBidXQgY2xhbmcgY2hlY2tzIHRoZSB0eXBlIGxpbWl0cw0KPj4gYmVm
b3JlIGNoZWNraW5nIHdoZXRoZXIgdGhpcyBhc3NpZ25tZW50IGlzIHJlYWNoZWQuIFNodXQgdXAg
dGhlIHdhcm5pbmcNCj4+IHVzaW5nIGFuIGV4cGxpY2l0IHR5cGUgY2FzdC4NCj4gDQo+IEknbSBu
b3QgdG9vIGhhcHB5IGFib3V0IHRoaXMgZml4IGFzIChJIGJlbGlldmUpIGl0IHdpbGwgYWxzbyBz
aHV0IHVwIGFueQ0KPiB2YWxpZCBHQ0MgZXJyb3IgbWVzc2FnZSBpbiBjYXNlIHRob3NlIG1hY3Jv
cyBhcmUgdXNlZCB3aXRoIG5vbi11OCAoYW5kDQo+IG5vbi1TU0FNX0FOWV94eHgpIHZhbHVlcy4N
Cg0KU2luY2UgeW91J3JlIHRoZSBtYWludGFpbmVyIG9mIHRoaXMgY29kZSwgSSdsbCBnbyB3aXRo
IHlvdXIganVkZ2VtZW50IGhlcmUsDQplc3AuIHNpbmNlIGFzIHRoZSBjb21taXQgbXNnIHN0YXRl
cyBTU0FNX0FOWV9JSUQgaXMgbmV2ZXIgYWN0dWFsbHkNCmFzc2lnbmVkIHRvIC5pbnN0YW5jZSwg
aW5zdGVhZCBpdCBnZXRzIHNldCB0byAwLg0KDQpTbyB0aGlzIGlzIGEgZmFsc2UtcG9zaXRpdmUg
Y29tcGlsZXIgd2FybmluZywgd2hpY2ggbWF5IGJlIGJlc3QgZml4ZWQgaW4NCnRoZSBjb21waWxl
ciBpdHNlbGYuDQoNCldpdGggdGhhdCBzYWlkIEkgdGhpbmsgdGhpcyBpcyB0aGUgc2Vjb25kIHRp
bWUgdGhpcyBjb21lcyB1cCBub3csIG1heWJlDQp3ZSBzaG91bGQgYWRkIGEgY29tbWVudCB0byB0
aGUgY29kZSBhYm91dCB0aGUgY2xhbmcgd2FybmluZyA/DQoNClJlZ2FyZHMsDQoNCkhhbnMNCg0K
DQo+IA0KPiBJJ2xsIGxldCBvdGhlcnMganVkZ2UgYW5kIGRlY2lkZSB3aGF0J3MgcHJlZmVycmVk
LCBob3dldmVyLg0KPiANCj4gSW4gY2FzZSB5b3UncmUgZGVjaWRpbmcgdG8gYXBwbHkgdGhpcywg
ZmVlbCBmcmVlIHRvIGFkZDoNCj4gDQo+IFJldmlld2VkLWJ5OiBNYXhpbWlsaWFuIEx1eiA8bHV6
bWF4aW1pbGlhbkBnbWFpbC5jb20+DQo+IA0KPiBUaGFua3MsDQo+IE1heA0KPiANCj4+IEZpeGVz
OiBlYjBlOTBhODIwOTggKCJwbGF0Zm9ybS9zdXJmYWNlOiBhZ2dyZWdhdG9yOiBBZGQgZGVkaWNh
dGVkIGJ1cyBhbmQgZGV2aWNlIHR5cGUiKQ0KPj4gU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFu
biA8YXJuZEBhcm5kYi5kZT4NCj4+IC0tLQ0KPj4gwqAgaW5jbHVkZS9saW51eC9zdXJmYWNlX2Fn
Z3JlZ2F0b3IvZGV2aWNlLmggfCA2ICsrKy0tLQ0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9zdXJmYWNlX2FnZ3JlZ2F0b3IvZGV2aWNlLmggYi9pbmNsdWRlL2xpbnV4L3N1cmZhY2Vf
YWdncmVnYXRvci9kZXZpY2UuaA0KPj4gaW5kZXggNDQ0MWFkNjY3YzNmLi45MGRmMDkyZWQ1NjUg
MTAwNjQ0DQo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L3N1cmZhY2VfYWdncmVnYXRvci9kZXZpY2Uu
aA0KPj4gKysrIGIvaW5jbHVkZS9saW51eC9zdXJmYWNlX2FnZ3JlZ2F0b3IvZGV2aWNlLmgNCj4+
IEBAIC05OCw5ICs5OCw5IEBAIHN0cnVjdCBzc2FtX2RldmljZV91aWQgew0KPj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8ICgoKGZ1bikgIT0gU1NBTV9BTllfRlVOKSA/IFNTQU1fTUFU
Q0hfRlVOQ1RJT04gOiAwKSzCoMKgwqAgXA0KPj4gwqDCoMKgwqDCoCAuZG9tYWluwqDCoCA9IGQs
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgXA0KPj4gwqDCoMKgwqDCoCAuY2F0ZWdvcnkgPSBjYXQswqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwNCj4+IC3CoMKgwqAgLnRhcmdl
dMKgwqAgPSAoKHRpZCkgIT0gU1NBTV9BTllfVElEKSA/ICh0aWQpIDogMCzCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIFwNCj4+IC3CoMKgwqAgLmluc3RhbmNlID0gKChpaWQpICE9IFNTQU1fQU5ZX0lJ
RCkgPyAoaWlkKSA6IDAswqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcDQo+PiAtwqDCoMKgIC5mdW5j
dGlvbiA9ICgoZnVuKSAhPSBTU0FNX0FOWV9GVU4pID8gKGZ1bikgOiAwwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIFwNCj4+ICvCoMKgwqAgLnRhcmdldMKgwqAgPSAoKHRpZCkgIT0gU1NB
TV9BTllfVElEKSA/ICh1OCkodGlkKSA6IDAswqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcDQo+PiAr
wqDCoMKgIC5pbnN0YW5jZSA9ICgoaWlkKSAhPSBTU0FNX0FOWV9JSUQpID8gKHU4KShpaWQpIDog
MCzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwNCj4+ICvCoMKgwqAgLmZ1bmN0aW9uID0gKChmdW4p
ICE9IFNTQU1fQU5ZX0ZVTikgPyAodTgpKGZ1bikgOiAwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBc
DQo+PiDCoCDCoCAvKioNCj4+IMKgwqAgKiBTU0FNX1ZERVYoKSAtIEluaXRpYWxpemUgYSAmc3Ry
dWN0IHNzYW1fZGV2aWNlX2lkIGFzIHZpcnR1YWwgZGV2aWNlIHdpdGgNCj4+DQo+IA0KDQotLSAK
WW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0
aGUgR29vZ2xlIEdyb3VwcyAiQ2xhbmcgQnVpbHQgTGludXgiIGdyb3VwLgpUbyB1bnN1YnNjcmli
ZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5k
IGFuIGVtYWlsIHRvIGNsYW5nLWJ1aWx0LWxpbnV4K3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5j
b20uClRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIgdmlzaXQgaHR0cHM6Ly9ncm91
cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2NsYW5nLWJ1aWx0LWxpbnV4LzQyZjcwOTE0LWU0NmMtMjBi
OS02YjEzLThlOGQ4NTUxMTJhOSU0MHJlZGhhdC5jb20uCg==

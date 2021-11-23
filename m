Return-Path: <clang-built-linux+bncBDDO3ANQ5EKBBD766WGAMGQE5GIF7UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6069C45B080
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Nov 2021 00:53:52 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id q17-20020adff791000000b00183e734ba48sf46604wrp.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Nov 2021 15:53:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637711632; cv=pass;
        d=google.com; s=arc-20160816;
        b=DDl+4aZttUzPKXmSVZy89rktp0x1EGfVfWWsjQ8O5t4DAH+AwcCrCkSXvX/RrrFM6h
         yT6Dv5smyPahAoVzTP252OPdZOxA3wPnvhp4zKBIVmpsoti1iTBhI3hl1YcTI/wBd7Ow
         rzUiArnx5O6HxMS87P6iTvFXt6qrq4wgLwPbZyFewQNOfBl+TPB3IYo8CApc4yu/tiUm
         TqFaej99CeTb8BfTONNi75cZVbPue3p/wwlip1JmffjCkE3EacKItZYpDALrP8kUQx5Y
         KogJHZCps1iw2cNB1ucjgCBZObLCPL3X17s9G0MboVrwxqvrXQfzNq2TSVxFdI3GBAGL
         Ce1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=GG6C9VmZ8rodOWA4rA0v3EvNdT1kv9k80p9CaNiAerI=;
        b=ku9kSC43PZgqh386vfDFD8vcZPivM1Mqa48x7IBGVRbg2nfL0PRqbzOJAgj+ILH1C9
         OLwIjUo7VUpOpLMp7NBHFWAaa81OyDvnA3G6OJdeMwrlnVm53amnGC79YMK7yNDiT9Ns
         6q8BnuhiBFrT9KGBzrU7rTxY/UTFl2+0Db2rgJRgz5Xaw9lE3pQYm3PcfUpGWvrw4uSf
         QDbSAbAJFKCLQE91wwar0Vem9PFmRCoU3K/lkYGHkB4jK7f4rYq891u3PEJso+cAVZzI
         Lah6Xz3+wlwbaOMz6Tp+ghx7HhqpgtODFEq+ZKCqiCAIt0pmH/ZZX7fOHK1PgsKrVVcV
         REgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of srinivas.pandruvada@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=srinivas.pandruvada@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GG6C9VmZ8rodOWA4rA0v3EvNdT1kv9k80p9CaNiAerI=;
        b=nMC2qwziB2Wp3OkFW6Dyj0CUh2wVizLzRknzRhgw1BpDLto328QmHalZhDXY2LboQh
         Sy3fgM0izZ6O1+8HvyxNvfthGqA54OmHtcAfy+WIeanYFeeZs4c8q5ETLrxTz21YS2tK
         UFCWUtBvXjujDYHwr1UwShPTSyGWARHlDPVsuAriBghWAja/nZGc5bl3u1nSRQR9I+zD
         EQ9iDb/6mkK02/EL0uH9G+VzdGiuD2Ku36PPBJ3wCYvPcjagyukIthP+PW98rU7ttyLz
         6NgGnDYjP73xltLX+hAjVWPdoQbuGzWfjQbhmbFkn2UUmI3FRCx8fJaaa7B6FeJcAQID
         8o1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GG6C9VmZ8rodOWA4rA0v3EvNdT1kv9k80p9CaNiAerI=;
        b=VxPDuZ0ZsMuxV9fWUHsavg/72+q1CkSsx2Dvu1RZZ3CFdL5HQSWZGRHQeiLcuHmcO7
         GK/9yaryyb/hXf3p1+1dcoaAJleZKwWtU7haOHscHhZY943pUiY2VcN4PWKwlQzKHktL
         dFdsESFTkFhbXaE+G8D8PqGy3ZX6F8W1W9WGJ9auiNvFpcv0jQtcBBUx3C/f6Pwu5GEA
         OKwQNWXWXXC1xsbPzoDTf6qzt6xhsqhaNbh0pp4rBVk/MoxzUzD9M5NK5Thu9JuOTuHC
         iFRNCh4629wCYnnGxCJFC88N2b05xEj6xJR1rJGhYvpygevH/z9xzw8Fl+7UVIUmzcBa
         zHVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532li1n+7271SD0MZCBpfuB+KTMsypKIPV0BMLnl7BIva8OQ1MHe
	OmcdiwhK8LALnl+uW2fDVfE=
X-Google-Smtp-Source: ABdhPJwgv22vjjR/6ZTfl/3TxP//fOo6ca3R9Z/cbnf0UAfxTVEJdaq4OIYADZFOfuT9LYG1gmH/iw==
X-Received: by 2002:a1c:7e04:: with SMTP id z4mr8579569wmc.134.1637711631924;
        Tue, 23 Nov 2021 15:53:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:23c8:: with SMTP id j191ls1601847wmj.1.gmail; Tue, 23
 Nov 2021 15:53:51 -0800 (PST)
X-Received: by 2002:a7b:c084:: with SMTP id r4mr8953128wmh.117.1637711630894;
        Tue, 23 Nov 2021 15:53:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637711630; cv=none;
        d=google.com; s=arc-20160816;
        b=SRDHCo2994F6wir64yaXkTEDpXqhKkZU03FaRKd224gOBLRUHdPEpSwKeQP1A+baxn
         N8cKPkwAcLdCN3KRNb/nkJdlTpuvDsaeWKgOa7Sv/r+4Y19WmxijbBkqCYULp4ufnIBL
         1rurfqDPKidLVmplyMVyCBYi4tOCmJRS4m4MxDxM4e5shY1Cia3cEP2OBkXg/Nq1hk7M
         TQB5wxCy22xKlc3TlF7GMQoTFuM8yorQ4yGQA7cIQnCI+EnmyvldThahjV/HipF9Q9jW
         kQHXU3bRo7qLxGBu77/uKeuGE5byC5kn5Q/Eh/sCUkqzzoitXKuU9mKFntN3aI4G95Gs
         Jsiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=kVOV/if80T08/qi5xKh9TgUXUWVQmPeQjNcWg5FUX8E=;
        b=dakS5sQ+laJ2LbC7y1rBHgX+AM7vpNciJOc7TQGd8EKvYwuGSXfxl7ys3aFH/EexzZ
         aRouSdzin2qKuspsxiDEXwENPpeCLSwtXvVPp3XNw9brtq5Z5/AeDhUtqJbbSmKiBGSX
         oUjhGKmEWPEAtqNoFNqvI32bmeFWi0uGHPDIWm9ZkQUwsSg78RxSPzGj2fWf6U0bhWKi
         81XxLbFKKrveFJalW37zE8Avsk2NHJAIYKERnDSilQmcfX1XZo86fVSlih4dL+UV966Q
         QA7tuEfZCrbtWGoeTaT+OGGq4GWPeMeNManvYwpHjy5Nk0gjA1l/VO1FS35Hr7IdsZnD
         VXUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of srinivas.pandruvada@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=srinivas.pandruvada@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id u10si209310wrb.5.2021.11.23.15.53.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Nov 2021 15:53:50 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of srinivas.pandruvada@linux.intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="259043174"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; 
   d="scan'208";a="259043174"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2021 15:53:48 -0800
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; 
   d="scan'208";a="509610560"
Received: from pshinde-mobl.amr.corp.intel.com ([10.213.85.70])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2021 15:53:41 -0800
Message-ID: <c5d1ee1f3b59bf18591a164c185650c77ec8aba7.camel@linux.intel.com>
Subject: Re: [PATCH v2 12/63] thermal: intel: int340x_thermal: Use
 struct_group() for memcpy() region
From: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Kees Cook
 <keescook@chromium.org>,  Zhang Rui <rui.zhang@intel.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Amit Kucheria <amitk@kernel.org>, Linux PM
 <linux-pm@vger.kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton
 <akpm@linux-foundation.org>, "open list:NETWORKING DRIVERS (WIRELESS)"
 <linux-wireless@vger.kernel.org>, netdev <netdev@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, linux-staging@lists.linux.dev,
  linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org, 
 clang-built-linux@googlegroups.com, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>,  linux-hardening@vger.kernel.org
Date: Tue, 23 Nov 2021 15:53:38 -0800
In-Reply-To: <CAJZ5v0iS3qMgdab1S-NzGfeLLXV=S6p5Qx8AaqJ50rsUngS=LA@mail.gmail.com>
References: <20210818060533.3569517-1-keescook@chromium.org>
	 <20210818060533.3569517-13-keescook@chromium.org>
	 <CAJZ5v0iS3qMgdab1S-NzGfeLLXV=S6p5Qx8AaqJ50rsUngS=LA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1
MIME-Version: 1.0
Content-Transfer-Encoding: base64
X-Original-Sender: srinivas.pandruvada@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of srinivas.pandruvada@linux.intel.com
 designates 192.55.52.88 as permitted sender) smtp.mailfrom=srinivas.pandruvada@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

T24gVHVlLCAyMDIxLTExLTIzIGF0IDE0OjE5ICswMTAwLCBSYWZhZWwgSi4gV3lzb2NraSB3cm90
ZToNCj4gT24gV2VkLCBBdWcgMTgsIDIwMjEgYXQgODowOCBBTSBLZWVzIENvb2sgPGtlZXNjb29r
QGNocm9taXVtLm9yZz4NCj4gd3JvdGU6DQo+ID4gDQo+ID4gSW4gcHJlcGFyYXRpb24gZm9yIEZP
UlRJRllfU09VUkNFIHBlcmZvcm1pbmcgY29tcGlsZS10aW1lIGFuZCBydW4tDQo+ID4gdGltZQ0K
PiA+IGZpZWxkIGJvdW5kcyBjaGVja2luZyBmb3IgbWVtY3B5KCksIGF2b2lkIGludGVudGlvbmFs
bHkgd3JpdGluZw0KPiA+IGFjcm9zcw0KPiA+IG5laWdoYm9yaW5nIGZpZWxkcy4NCj4gPiANCj4g
PiBVc2Ugc3RydWN0X2dyb3VwKCkgaW4gc3RydWN0IGFydCBhcm91bmQgbWVtYmVycyB3ZWlnaHQs
IGFuZCBhY1swLQ0KPiA+IDldX21heCwNCj4gPiBzbyB0aGV5IGNhbiBiZSByZWZlcmVuY2VkIHRv
Z2V0aGVyLiBUaGlzIHdpbGwgYWxsb3cgbWVtY3B5KCkgYW5kDQo+ID4gc2l6ZW9mKCkNCj4gPiB0
byBtb3JlIGVhc2lseSByZWFzb24gYWJvdXQgc2l6ZXMsIGltcHJvdmUgcmVhZGFiaWxpdHksIGFu
ZCBhdm9pZA0KPiA+IGZ1dHVyZQ0KPiA+IHdhcm5pbmdzIGFib3V0IHdyaXRpbmcgYmV5b25kIHRo
ZSBlbmQgb2Ygd2VpZ2h0Lg0KPiA+IA0KPiA+ICJwYWhvbGUiIHNob3dzIG5vIHNpemUgbm9yIG1l
bWJlciBvZmZzZXQgY2hhbmdlcyB0byBzdHJ1Y3QgYXJ0Lg0KPiA+ICJvYmpkdW1wIC1kIiBzaG93
cyBubyBtZWFuaW5nZnVsIG9iamVjdCBjb2RlIGNoYW5nZXMgKGkuZS4gb25seQ0KPiA+IHNvdXJj
ZQ0KPiA+IGxpbmUgbnVtYmVyIGluZHVjZWQgZGlmZmVyZW5jZXMpLg0KPiA+IA0KPiA+IENjOiBa
aGFuZyBSdWkgPHJ1aS56aGFuZ0BpbnRlbC5jb20+DQo+ID4gQ2M6IERhbmllbCBMZXpjYW5vIDxk
YW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPg0KPiA+IENjOiBBbWl0IEt1Y2hlcmlhIDxhbWl0a0Br
ZXJuZWwub3JnPg0KPiA+IENjOiBsaW51eC1wbUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiBTaWduZWQt
b2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4NCj4gDQo+IFJ1aSwgU3Jp
bml2YXMsIGFueSBjb21tZW50cyBoZXJlPw0KTG9va3MgZ29vZC4NClJldmlld2VkLWJ5OiBTcmlu
aXZhcyBQYW5kcnV2YWRhIDxzcmluaXZhcy5wYW5kcnV2YWRhQGxpbnV4LmludGVsLmNvbT4NCg0K
VGhhbmtzLA0KU3Jpbml2YXMNCg0KPiANCj4gPiAtLS0NCj4gPiDCoC4uLi9pbnRlbC9pbnQzNDB4
X3RoZXJtYWwvYWNwaV90aGVybWFsX3JlbC5jwqAgfMKgIDUgKy0NCj4gPiDCoC4uLi9pbnRlbC9p
bnQzNDB4X3RoZXJtYWwvYWNwaV90aGVybWFsX3JlbC5owqAgfCA0OCArKysrKysrKysrLS0tLS0t
LQ0KPiA+IC0tDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDI0IGRl
bGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvaW50ZWwv
aW50MzQweF90aGVybWFsL2FjcGlfdGhlcm1hbF9yZWwuYw0KPiA+IGIvZHJpdmVycy90aGVybWFs
L2ludGVsL2ludDM0MHhfdGhlcm1hbC9hY3BpX3RoZXJtYWxfcmVsLmMNCj4gPiBpbmRleCBhNDc4
Y2ZmODE2MmEuLmU5MDY5MGEyMzRjNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwv
aW50ZWwvaW50MzQweF90aGVybWFsL2FjcGlfdGhlcm1hbF9yZWwuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvdGhlcm1hbC9pbnRlbC9pbnQzNDB4X3RoZXJtYWwvYWNwaV90aGVybWFsX3JlbC5jDQo+ID4g
QEAgLTI1MCw4ICsyNTAsOSBAQCBzdGF0aWMgaW50IGZpbGxfYXJ0KGNoYXIgX191c2VyICp1YnVm
KQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnZXRfc2luZ2xlX25hbWUoYXJ0
c1tpXS5zb3VyY2UsDQo+ID4gYXJ0X3VzZXJbaV0uc291cmNlX2RldmljZSk7DQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdldF9zaW5nbGVfbmFtZShhcnRzW2ldLnRhcmdldCwN
Cj4gPiBhcnRfdXNlcltpXS50YXJnZXRfZGV2aWNlKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLyogY29weSB0aGUgcmVzdCBpbnQgZGF0YSBpbiBhZGRpdGlvbiB0byBzb3Vy
Y2UgYW5kDQo+ID4gdGFyZ2V0ICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
bWVtY3B5KCZhcnRfdXNlcltpXS53ZWlnaHQsICZhcnRzW2ldLndlaWdodCwNCj4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZW9mKHU2NCkgKiAoQUNQ
SV9OUl9BUlRfRUxFTUVOVFMgLSAyKSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgQlVJTERfQlVHX09OKHNpemVvZihhcnRfdXNlcltpXS5kYXRhKSAhPQ0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZW9mKHU2
NCkgKiAoQUNQSV9OUl9BUlRfRUxFTUVOVFMgLQ0KPiA+IDIpKTsNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBtZW1jcHkoJmFydF91c2VyW2ldLmRhdGEsICZhcnRzW2ldLmRhdGEs
DQo+ID4gc2l6ZW9mKGFydF91c2VyW2ldLmRhdGEpKTsNCj4gPiDCoMKgwqDCoMKgwqDCoCB9DQo+
ID4gDQo+ID4gwqDCoMKgwqDCoMKgwqAgaWYgKGNvcHlfdG9fdXNlcih1YnVmLCBhcnRfdXNlciwg
YXJ0X2xlbikpDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9pbnRlbC9pbnQzNDB4
X3RoZXJtYWwvYWNwaV90aGVybWFsX3JlbC5oDQo+ID4gYi9kcml2ZXJzL3RoZXJtYWwvaW50ZWwv
aW50MzQweF90aGVybWFsL2FjcGlfdGhlcm1hbF9yZWwuaA0KPiA+IGluZGV4IDU4ODIyNTc1ZmQ1
NC4uNzhkOTQyNDc3MDM1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9pbnRlbC9p
bnQzNDB4X3RoZXJtYWwvYWNwaV90aGVybWFsX3JlbC5oDQo+ID4gKysrIGIvZHJpdmVycy90aGVy
bWFsL2ludGVsL2ludDM0MHhfdGhlcm1hbC9hY3BpX3RoZXJtYWxfcmVsLmgNCj4gPiBAQCAtMTcs
MTcgKzE3LDE5IEBADQo+ID4gwqBzdHJ1Y3QgYXJ0IHsNCj4gPiDCoMKgwqDCoMKgwqDCoCBhY3Bp
X2hhbmRsZSBzb3VyY2U7DQo+ID4gwqDCoMKgwqDCoMKgwqAgYWNwaV9oYW5kbGUgdGFyZ2V0Ow0K
PiA+IC3CoMKgwqDCoMKgwqAgdTY0IHdlaWdodDsNCj4gPiAtwqDCoMKgwqDCoMKgIHU2NCBhYzBf
bWF4Ow0KPiA+IC3CoMKgwqDCoMKgwqAgdTY0IGFjMV9tYXg7DQo+ID4gLcKgwqDCoMKgwqDCoCB1
NjQgYWMyX21heDsNCj4gPiAtwqDCoMKgwqDCoMKgIHU2NCBhYzNfbWF4Ow0KPiA+IC3CoMKgwqDC
oMKgwqAgdTY0IGFjNF9tYXg7DQo+ID4gLcKgwqDCoMKgwqDCoCB1NjQgYWM1X21heDsNCj4gPiAt
wqDCoMKgwqDCoMKgIHU2NCBhYzZfbWF4Ow0KPiA+IC3CoMKgwqDCoMKgwqAgdTY0IGFjN19tYXg7
DQo+ID4gLcKgwqDCoMKgwqDCoCB1NjQgYWM4X21heDsNCj4gPiAtwqDCoMKgwqDCoMKgIHU2NCBh
YzlfbWF4Ow0KPiA+ICvCoMKgwqDCoMKgwqAgc3RydWN0X2dyb3VwKGRhdGEsDQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTY0IHdlaWdodDsNCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB1NjQgYWMwX21heDsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1NjQgYWMxX21heDsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQg
YWMyX21heDsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWMzX21heDsN
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM0X21heDsNCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM1X21heDsNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM2X21heDsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB1NjQgYWM3X21heDsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1
NjQgYWM4X21heDsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM5X21h
eDsNCj4gPiArwqDCoMKgwqDCoMKgICk7DQo+ID4gwqB9IF9fcGFja2VkOw0KPiA+IA0KPiA+IMKg
c3RydWN0IHRydCB7DQo+ID4gQEAgLTQ3LDE3ICs0OSwxOSBAQCB1bmlvbiBhcnRfb2JqZWN0IHsN
Cj4gPiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjaGFyIHNvdXJjZV9kZXZpY2VbOF07IC8qIEFDUEkgc2luZ2xlIG5hbWUgKi8NCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hhciB0YXJnZXRfZGV2aWNlWzhdOyAv
KiBBQ1BJIHNpbmdsZSBuYW1lICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
dTY0IHdlaWdodDsNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWMwX21h
eF9sZXZlbDsNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWMxX21heF9s
ZXZlbDsNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWMyX21heF9sZXZl
bDsNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWMzX21heF9sZXZlbDsN
Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM0X21heF9sZXZlbDsNCj4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM1X21heF9sZXZlbDsNCj4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM2X21heF9sZXZlbDsNCj4gPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM3X21heF9sZXZlbDsNCj4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM4X21heF9sZXZlbDsNCj4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM5X21heF9sZXZlbDsNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3RfZ3JvdXAoZGF0YSwNCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTY0IHdlaWdodDsNCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTY0IGFjMF9tYXhfbGV2ZWw7DQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHU2NCBhYzFf
bWF4X2xldmVsOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1NjQgYWMyX21heF9sZXZlbDsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdTY0IGFjM19tYXhfbGV2ZWw7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHU2NCBhYzRfbWF4X2xldmVsOw0KPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM1X21heF9s
ZXZlbDsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
dTY0IGFjNl9tYXhfbGV2ZWw7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHU2NCBhYzdfbWF4X2xldmVsOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1NjQgYWM4X21heF9sZXZlbDsNCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdTY0IGFjOV9tYXhfbGV2ZWw7
DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKTsNCj4gPiDCoMKgwqDCoMKgwqDC
oCB9Ow0KPiA+IMKgwqDCoMKgwqDCoMKgIHU2NCBfX2RhdGFbQUNQSV9OUl9BUlRfRUxFTUVOVFNd
Ow0KPiA+IMKgfTsNCj4gPiAtLQ0KPiA+IDIuMzAuMg0KPiA+IA0KDQoNCi0tIApZb3UgcmVjZWl2
ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUg
R3JvdXBzICJDbGFuZyBCdWlsdCBMaW51eCIgZ3JvdXAuClRvIHVuc3Vic2NyaWJlIGZyb20gdGhp
cyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwg
dG8gY2xhbmctYnVpbHQtbGludXgrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KVG8gdmll
dyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUu
Y29tL2QvbXNnaWQvY2xhbmctYnVpbHQtbGludXgvYzVkMWVlMWYzYjU5YmYxODU5MWExNjRjMTg1
NjUwYzc3ZWM4YWJhNy5jYW1lbCU0MGxpbnV4LmludGVsLmNvbS4K

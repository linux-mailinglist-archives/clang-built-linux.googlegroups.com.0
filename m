Return-Path: <clang-built-linux+bncBAABBH4L4OCQMGQEDJ2F4XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B45739A081
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 14:05:53 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id om12-20020a17090b3a8cb029016a4ee7d56fsf3143356pjb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 05:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622721952; cv=pass;
        d=google.com; s=arc-20160816;
        b=YX51YHvne3+FOCwlMjeEtP3evnjwvLdAqK/KsKZgzDhjW50tQ4cAVsR+jcePFI7UQp
         w4UoQxelXoTKHeb+L+UZVH06uSZAbbZNtIWS7BYwr0ycmy6YxXmx3zuvWKb5GjsWQ64U
         o1cNOHY/LvpmI1w0KDfT/kCu23d4tzuIO1uHJJwuIbI5zPq1bHONAg0VlZnv+zabbmw9
         RODO/3D6Jmxm961PsH7Y3jiC+DXtsfRdg6/+TU4rZEsKCwZHL4O3lXyRXj117RmL2CVl
         tpKmxsZDe+YNnlm4Oa2NkKMtRF03dWZJbxK4V1MurUFdDJIMlV58ifxmVy6Pf9QUvmIk
         irNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=odyT77Xm4AVmNbOR+q97/MNnbTNyxNtI2P7/1vmUoVk=;
        b=XrJJykKa9SGEd0pqgaLSTfq+/1x+EEb2PZRILsykVetAFzbpyKCWYTW1MjPfM+LOTL
         C+wqH2OTNikTVuCtY0iQO8NhWrgKmBjdDLGOonuTReuVI9fblm9HNyEnEoWlzY2OAkBB
         86Qcq/xmy7V+WkDLnC3zwlfy+xs8hMJunXZVV/wbTs9KpiqF98G3p/trskpDP/AcFOw5
         N2I51vDCoKkWyxTmHUzqokOxVieU33DfPYCqm2MwucIwpYtgiHbcZOLNf13eRWMFOF6t
         g4OLU6ogsmGf5BQl7GV6faL9pa9mWUnZGcXHGFTPy6d/EEE94v8g3ihWPboi/nXB5zuR
         xzVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@email.cn header.s=dkim header.b=WZkFqXEV;
       spf=pass (google.com: domain of bobwxc@email.cn designates 43.250.32.153 as permitted sender) smtp.mailfrom=bobwxc@email.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=odyT77Xm4AVmNbOR+q97/MNnbTNyxNtI2P7/1vmUoVk=;
        b=dwI5NeV+t3MM6D/lE3ixGOyIV+C47TzSxDIC7tYbpiLFe6pR5osklm+f0RLKR/mQLg
         evsJ+VA3zG1j6Ol19Zqx5h+Nv18Fj44pQ64nJOGQMBAFpMQmd4H4wKdSesx4xv5dd/w4
         VsrAy98Xl813uXTPhnssinp0lYP3mr8kNTGEh7Dehj+u2J8dHmVG6d0akyKAMOKBRiVn
         OPt+TN2ITOeQPoDEmQ+uShBZ4nx203ZeVc0ZdY4kFF/V+22IhQdHQxtzhgWi/TcnU1d9
         hBTjaiPGMrd1H+MieWHoGSm8tHGUP2bK6LDHQfEyFbj+pkVUJdCpQIvYZEmVZNASkVqj
         /7lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=odyT77Xm4AVmNbOR+q97/MNnbTNyxNtI2P7/1vmUoVk=;
        b=CdJz1cheIcx/+g2F9JmjEOFstGzyUgP/H7PnLF/hwRG+Yf9WQiQxZRDETFJSUfw2wS
         YyQYyRpQJQfooK5+NEj0HMdyI525ZsSK9l0s8m8tTsE316fsOZCuwDw+s9Yj8JJczTUw
         15+2uGZvAo0kFDzZnlMGTxfGUn4iveoeqI3Kuh/YeTJadb7mRaQ7eQvpwuq2kRJoY+Sg
         NUxY6C7tEv5XjkiAOj+pAo7gJ6tvHMMT8+HedeDyxEyNbvjHatJkGdS5fL/QcdCPGJkN
         PHhvfhp2b+UHr7c+i1CyCEgm0+gP392z2gwtK9g0JvCs0q0tqrkeE/h5TYVjFCzU5tKp
         Dkfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DvfWa+4xcsIEdepd7R9tJrtgp6cYGoBVlM6mKC/cy9Gd3Tsnt
	dd/efcBUuExOqRsnmGH84K8=
X-Google-Smtp-Source: ABdhPJyCsxbArtAT7WBkwFk8VcSwZR0z0sNZ1LBlzyjsDVeaxcQX2s+8Kbg3fY8Tt8iFwaxS4OWDHg==
X-Received: by 2002:a63:1224:: with SMTP id h36mr39246665pgl.296.1622721951805;
        Thu, 03 Jun 2021 05:05:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:fb0e:: with SMTP id x14ls1540320pfm.10.gmail; Thu, 03
 Jun 2021 05:05:51 -0700 (PDT)
X-Received: by 2002:a05:6a00:14d0:b029:2cf:ee47:dfd9 with SMTP id w16-20020a056a0014d0b02902cfee47dfd9mr32671183pfu.31.1622721951333;
        Thu, 03 Jun 2021 05:05:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622721951; cv=none;
        d=google.com; s=arc-20160816;
        b=q4n9c+Y6CLbWvJKJdizVv9RWtSIGjLxSsqPwa1ogUr+NjfsZifLTDSiuNoUux+xWP9
         YBwxDxqWqCYcuw4RgHqs8L7bzq58xHj6HtMYhF26WXBRme7VzTqtBfPNlJ5zdVsOiqF+
         mFWEJRu5LxnwcfJD3g2458ECMNdcAbdHpbB7PivsSviWM7jADqT3uttR+DjnvcDQZnY5
         U6oaRyPERmjLt1gPvOt22+ioJ75kGBuk80J0jcQ1DtAPNgGjKa6ytzHIgW1oRfzyFxC7
         BwM4GeZ9Y0LVp3Sf/ox+Jb3uePnS/4chn9fUKVOA6qIAj2sV7+F6/FKKWu+kybuMGaO8
         pz5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hTo4ZZAKzb8rq0WKz65ovYlqxLCuQVuSBE+Q9OhIE38=;
        b=UFYchhlIFLSfFOKf6LKL3w/j9gFFYV5A7yBQQGmMmvCaMJsg5G02lPwWo6fyw2uPBi
         FZF2fQbgOoid/HC6sMsL9Os7uawW8OnXI+9E8pDC9FVORZ0H/fVGtmH9HeyNkoSdVwC/
         rLilflJktZYD64ZwJqRLQ4sKJAy4nOnkGBL3mJUkKTEAfxOInmqL2OmpEGtuMqIgBpw7
         uKJbwXboYX1Apsa6W8UQaYj0j7N2vx8CCz5TmUa11H256/UTuBMDrCUuRgOGhWxAaHaO
         G7tZOEvTJssavs6I4J9nhvcrC4aNScqbmchLG8CH4DyB8z6r1c6wBitkJJmNhgWkksfd
         EPSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@email.cn header.s=dkim header.b=WZkFqXEV;
       spf=pass (google.com: domain of bobwxc@email.cn designates 43.250.32.153 as permitted sender) smtp.mailfrom=bobwxc@email.cn
Received: from email.cn (m32-153.88.com. [43.250.32.153])
        by gmr-mx.google.com with ESMTPS id mm4si233386pjb.2.2021.06.03.05.05.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 03 Jun 2021 05:05:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of bobwxc@email.cn designates 43.250.32.153 as permitted sender) client-ip=43.250.32.153;
Received: from bobwxc.top (unknown [120.238.248.220])
	by v_coremail2-frontend-2 (Coremail) with SMTP id GiKnCgBX+laPxbhgT5ZiAA--.35207S2;
	Thu, 03 Jun 2021 20:05:38 +0800 (CST)
Date: Thu, 3 Jun 2021 20:05:33 +0800
From: "Wu X.C." <bobwxc@email.cn>
To: Wan Jiabing <wanjiabing@vivo.com>
Cc: Alex Shi <alexs@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bernard Zhao <bernard@vivo.com>, Fangrui Song <maskray@google.com>,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v3] docs/zh_CN: add translations in
 zh_CN/dev-tools/kasan
Message-ID: <20210603120308.GB5502@bobwxc.top>
References: <1622713654-16093-1-git-send-email-wanjiabing@vivo.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s/l3CgOIzMHHjg/5"
Content-Disposition: inline
In-Reply-To: <1622713654-16093-1-git-send-email-wanjiabing@vivo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CM-TRANSID: GiKnCgBX+laPxbhgT5ZiAA--.35207S2
X-Coremail-Antispam: 1UD129KBjvJXoWxZFW3Cw1UWr4xXrW7Cr43Awb_yoWrtr17pr
	ZYkrWSka1Ivr1SkFyUuF1DGF18Cr1xCay5KFn7X3ZYqr1kJrWayr12kF9FgrWxu348ZFW8
	Aa1SkF90vF9YkwUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkqb7Iv0xC_Cr1lb4IE77IF4wAFc2x0x2IEx4CE42xK8VAvwI8I
	cIk0rVWrJVCq3wA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjx
	v20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j6F4UM28EF7xvwVC2
	z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26F4UJVW0owAS0I0E0xvYzx
	vE52x082IY62kv0487M2AExVA0xI801c8C04v7Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
	7VCjz48v1sIEY20_Cr1UJr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JM4IIrI
	8v6xkF7I0E8cxan2IY04v7MxkIecxEwVAFwVW5JwCF04k20xvY0x0EwIxGrwCF04k20xvE
	74AGY7Cv6cx26F4UJr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr
	0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0E
	wIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JV
	WxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAI
	cVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IUUBWlPUUUUU==
X-Originating-IP: [120.238.248.220]
X-CM-SenderInfo: pere453f6hztlloou0/
X-Original-Sender: bobwxc@email.cn
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@email.cn header.s=dkim header.b=WZkFqXEV;       spf=pass
 (google.com: domain of bobwxc@email.cn designates 43.250.32.153 as permitted
 sender) smtp.mailfrom=bobwxc@email.cn
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


--s/l3CgOIzMHHjg/5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: base64

T24gVGh1LCBKdW4gMDMsIDIwMjEgYXQgMDU6NDc6MjVQTSArMDgwMCwgV2FuIEppYWJpbmcgd3Jv
dGU6DQo+IEFkZCBuZXcgemggdHJhbnNsYXRpb25zDQo+ICogemhfQ04vZGV2LXRvb2xzL2thc2Fu
LnJzdA0KPiBhbmQgbGluayBpdCB0byB6aF9DTi9kZXYtdG9vbHMvaW5kZXgucnN0DQo+IA0KPiBS
ZXZpZXdlZC1ieTogRmFuZ3J1aSBTb25nIDxtYXNrcmF5QGdvb2dsZS5jb20+DQo+IFNpZ25lZC1v
ZmYtYnk6IFdhbiBKaWFiaW5nIDx3YW5qaWFiaW5nQHZpdm8uY29tPg0KPiAtLS0NCj4gQ2hhbmdl
bG9nOg0KPiB2MzoNCj4gLSBGaXggYWxpZ25zIGFuZCBpbmFjY3VyYXRlIHRyYW5zbGF0aW9uDQo+
IHYyOg0KPiAtIERlbGV0ZSBzcGFjZXMgc3Vycm91bmQgd2l0aCBFbmdsaXNoIHdvcmRzLg0KPiAt
LS0NCj4gIC4uLi90cmFuc2xhdGlvbnMvemhfQ04vZGV2LXRvb2xzL2luZGV4LnJzdCAgICAgICAg
IHwgICAyICstDQo+ICAuLi4vdHJhbnNsYXRpb25zL3poX0NOL2Rldi10b29scy9rYXNhbi5yc3Qg
ICAgICAgICB8IDQxNyArKysrKysrKysrKysrKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwg
NDE4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBE
b2N1bWVudGF0aW9uL3RyYW5zbGF0aW9ucy96aF9DTi9kZXYtdG9vbHMva2FzYW4ucnN0DQo+IA0K
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi90cmFuc2xhdGlvbnMvemhfQ04vZGV2LXRvb2xz
L2luZGV4LnJzdCBiL0RvY3VtZW50YXRpb24vdHJhbnNsYXRpb25zL3poX0NOL2Rldi10b29scy9p
bmRleC5yc3QNCj4gaW5kZXggZmQ3M2M0Ny4uZTZjOTlmMiAxMDA2NDQNCj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi90cmFuc2xhdGlvbnMvemhfQ04vZGV2LXRvb2xzL2luZGV4LnJzdA0KPiArKysgYi9E
b2N1bWVudGF0aW9uL3RyYW5zbGF0aW9ucy96aF9DTi9kZXYtdG9vbHMvaW5kZXgucnN0DQo+IEBA
IC0xOSwxMyArMTksMTMgQEANCj4gICAgIDptYXhkZXB0aDogMg0KPiAgDQo+ICAgICBnY292DQo+
ICsgICBrYXNhbg0KPiAgDQo+ICBUb2RvbGlzdDoNCj4gIA0KPiAgIC0gY29jY2luZWxsZQ0KPiAg
IC0gc3BhcnNlDQo+ICAgLSBrY292DQo+IC0gLSBrYXNhbg0KPiAgIC0gdWJzYW4NCj4gICAtIGtt
ZW1sZWFrDQo+ICAgLSBrY3Nhbg0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi90cmFuc2xh
dGlvbnMvemhfQ04vZGV2LXRvb2xzL2thc2FuLnJzdCBiL0RvY3VtZW50YXRpb24vdHJhbnNsYXRp
b25zL3poX0NOL2Rldi10b29scy9rYXNhbi5yc3QNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4g
aW5kZXggMDAwMDAwMC4uYTEyYjNiMA0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL0RvY3VtZW50
YXRpb24vdHJhbnNsYXRpb25zL3poX0NOL2Rldi10b29scy9rYXNhbi5yc3QNCj4gQEAgLTAsMCAr
MSw0MTcgQEANCj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+ICsNCj4g
Ky4uIGluY2x1ZGU6OiAuLi9kaXNjbGFpbWVyLXpoX0NOLnJzdA0KPiArDQo+ICs6T3JpZ2luYWw6
IERvY3VtZW50YXRpb24vZGV2LXRvb2xzL2thc2FuLnJzdA0KPiArOlRyYW5zbGF0b3I6IOS4h+Wu
tuWFtSBXYW4gSmlhYmluZyA8d2FuamlhYmluZ0B2aXZvLmNvbT4NCj4gKw0KPiAr5YaF5qC45Zyw
5Z2A5raI5q+S5YmCKEtBU0FOKQ0KPiArPT09PT09PT09PT09PT09PT09PT09PQ0KPiArDQo+ICvm
poLov7ANCj4gKy0tLS0NCj4gKw0KPiArS2VybmVsQWRkcmVzc1NBTml0aXplcihLQVNBTinmmK/k
uIDnp43liqjmgIHlhoXlrZjlronlhajplJnor6/mo4DmtYvlt6XlhbfvvIzkuLvopoHlip/og73m
mK8NCj4gK+ajgOafpeWGheWtmOi2iueVjOiuv+mXruWSjOS9v+eUqOW3sumHiuaUvuWGheWtmOea
hOmXrumimOOAgktBU0FO5pyJ5LiJ56eN5qih5byPOg0KPiArDQo+ICsxLiDpgJrnlKhLQVNBTu+8
iOS4jueUqOaIt+epuumXtOeahEFTYW7nsbvkvLzvvIkNCj4gKzIuIOWfuuS6jui9r+S7tuagh+et
vueahEtBU0FO77yI5LiO55So5oi356m66Ze055qESFdBU2Fu57G75Ly877yJDQo+ICszLiDln7rk
uo7noazku7bmoIfnrb7nmoRLQVNBTu+8iOWfuuS6juehrOS7tuWGheWtmOagh+etvu+8iQ0KPiAr
DQo+ICvnlLHkuo7pgJrnlKhLQVNBTueahOWGheWtmOW8gOmUgOi+g+Wkp++8jOmAmueUqEtBU0FO
5Li76KaB55So5LqO6LCD6K+V44CC5Z+65LqO6L2v5Lu25qCH562+55qES0FTQU4NCj4gK+WPr+eU
qOS6jmRvZ2Zvb2TmtYvor5XvvIzlm6DkuLrlroPlhbfmnInovoPkvY7nmoTlhoXlrZjlvIDplIDv
vIzlubblhYHorrjlsIblhbbnlKjkuo7lrp7pmYXlt6XkvZzph4/jgIINCj4gK+WfuuS6juehrOS7
tuagh+etvueahEtBU0FO5YW35pyJ6L6D5L2O55qE5YaF5a2Y5ZKM5oCn6IO95byA6ZSA77yM5Zug
5q2k5Y+v55So5LqO55Sf5Lqn44CC5ZCM5pe25Y+v55So5LqODQo+ICvmo4DmtYvnjrDlnLrlhoXl
rZjpl67popjmiJbkvZzkuLrlronlhajnvJPop6Pmjqrmlr3jgIINCj4gKw0KPiAr6L2v5Lu2S0FT
QU7mqKHlvI/vvIgjMeWSjCMy77yJ5L2/55So57yW6K+R5pe25bel5YW35Zyo5q+P5qyh5YaF5a2Y
6K6/6Zeu5LmL5YmN5o+S5YWl5pyJ5pWI5oCn5qOA5p+l77yMDQo+ICvlm6DmraTpnIDopoHkuIDk
uKrmlK/mjIHlroPnmoTnvJbor5HlmajniYjmnKzjgIINCj4gKw0KPiAr6YCa55SoS0FTQU7lnKhH
Q0PlkoxDbGFuZ+WPl+aUr+aMgeOAgkdDQ+mcgOimgTguMy4w5oiW5pu06auY54mI5pys44CC5Lu7
5L2V5Y+X5pSv5oyB55qEQ2xhbmcNCj4gK+eJiOacrOmDveaYr+WFvOWuueeahO+8jOS9huS7jkNs
YW5nIDEx5omN5byA5aeL5pSv5oyB5qOA5rWL5YWo5bGA5Y+Y6YeP55qE6LaK55WM6K6/6Zeu44CC
DQo+ICsNCj4gK+WfuuS6jui9r+S7tuagh+etvueahEtBU0FO5qih5byP5LuF5ZyoQ2xhbmfkuK3l
j5fmlK/mjIHjgIINCj4gKw0KPiAr56Gs5Lu2S0FTQU7mqKHlvI/vvIgjM++8ieS+nei1luehrOS7
tuadpeaJp+ihjOajgOafpe+8jOS9huS7jemcgOimgeaUr+aMgeWGheWtmOagh+etvuaMh+S7pOea
hOe8luivkeWZqA0KPiAr54mI5pys44CCR0NDIDEwK+WSjENsYW5nIDExK+aUr+aMgeatpOaooeW8
j+OAgg0KPiArDQo+ICvkuKTnp43ova/ku7ZLQVNBTuaooeW8j+mDvemAgueUqOS6jlNMVULlkoxT
TEFC5YaF5a2Y5YiG6YWN5Zmo77yM6ICM5Z+65LqO56Gs5Lu25qCH562+55qES0FTQU7nm67liY0N
Cj4gK+S7heaUr+aMgVNMVULjgIINCj4gKw0KPiAr55uu5YmNeDg2XzY044CBYXJt44CBYXJtNjTj
gIF4dGVuc2HjgIFzMzkw44CBcmlzY3bmnrbmnoTmlK/mjIHpgJrnlKhLQVNBTuaooeW8j++8jOS7
hQ0KPiArYXJtNjTmnrbmnoTmlK/mjIHln7rkuo7moIfnrb7nmoRLQVNBTuaooeW8j+OAgg0KPiAr
DQo+ICvnlKjms5UNCj4gKy0tLS0NCj4gKw0KPiAr6KaB5ZCv55SoS0FTQU7vvIzor7fkvb/nlKjk
u6XkuIvlkb3ku6TphY3nva7lhoXmoLg6Og0KPiArDQo+ICsJICBDT05GSUdfS0FTQU49eQ0KPiAr
DQo+ICvlkIzml7blnKggYGBDT05GSUdfS0FTQU5fR0VORVJJQ2BgICjlkK/nlKjpgJrnlKhLQVNB
TuaooeW8jynvvIwgYGBDT05GSUdfS0FTQU5fU1dfVEFHU2BgDQo+ICso5ZCv55So5Z+65LqO56Gs
5Lu25qCH562+55qES0FTQU7mqKHlvI8p77yM5ZKMIGBgQ09ORklHX0tBU0FOX0hXX1RBR1NgYCAo
5ZCv55So5Z+65LqO56Gs5Lu25qCH562+DQo+ICvnmoRLQVNBTuaooeW8jynkuYvpl7Tov5vooYzp
gInmi6njgIINCj4gKw0KPiAr5a+55LqO6L2v5Lu25qih5byP77yM6L+Y5Y+v5Lul5ZyoIGBgQ09O
RklHX0tBU0FOX09VVExJTkVgYCDlkowgYGBDT05GSUdfS0FTQU5fSU5MSU5FYGANCj4gK+S5i+mX
tOi/m+ihjOmAieaLqeOAgm91dGxpbmXlkoxpbmxpbmXmmK/nvJbor5Hlmajmj5Lmoannsbvlnovj
gILliY3ogIXkuqfnlJ/ovoPlsI/nmoTkuozov5vliLbmlofku7bvvIwNCj4gK+iAjOWQjuiAheW/
qzEuMS0y5YCN44CCDQo+ICsNCj4gK+imgeWwhuWPl+W9seWTjeeahHNsYWLlr7nosaHnmoRhbGxv
Y+WSjGZyZWXloIbmoIjot5/ouKrljIXlkKvliLDmiqXlkYrkuK3vvIzor7flkK/nlKgNCj4gK2Bg
Q09ORklHX1NUQUNLVFJBQ0VgYCDjgILopoHljIXmi6zlj5flvbHlk43niannkIbpobXpnaLnmoTl
iIbphY3lkozph4rmlL7loIbmoIjot5/ouKrnmoTor53vvIwNCj4gK+ivt+WQr+eUqGBgQ09ORklH
X1BBR0VfT1dORVJgYCDlubbkvb/nlKggYGBwYWdlX293bmVyPW9uYGAg6L+b6KGM5byV5a+844CC
DQotLS0tLS0tLV4NCg0KbWlzc2VkIGEgc3BhY2UgaGVyZQ0KDQpCdWlsZCBpdCwganVzdCBoZXJl
Lg0KDQpUaGFua3MsDQoJV3UgWC5DLg0KDQotLSAKWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBi
ZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAiQ2xhbmcgQnVp
bHQgTGludXgiIGdyb3VwLgpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3Ag
cmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIGNsYW5nLWJ1aWx0LWxp
bnV4K3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20uClRvIHZpZXcgdGhpcyBkaXNjdXNzaW9u
IG9uIHRoZSB3ZWIgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2NsYW5n
LWJ1aWx0LWxpbnV4LzIwMjEwNjAzMTIwMzA4LkdCNTUwMiU0MGJvYnd4Yy50b3AuCg==
--s/l3CgOIzMHHjg/5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEERbo3U5kJpaCtFl1PtlsoEiKCsIUFAmC4xPsACgkQtlsoEiKC
sIU7BgwAvxMe58tMbNHB+ajapeQV1W/FfIM0M7TIlGXOlqmdwgmuZnbZSLk1NwUj
PjIg8uYQH++TfVudS+4OA9loLxIDaS913XurAsjA3U/dWIlyYU3Y4McE/vZrMBnO
b8tvwn9eD579sd5tsA0wtK4NJ7VBIFtg8R5cMeers/dm+b7eKSb5Lf1MN9YqvX0F
CmGsXsGfkWkEdRMsZkbj96N0Uo1UTXqEZgxEumr25xwN5+dnpcAtUqzvNfxlunnu
PaJL7UGIi37Dbov5EUHXIdqOhjYQzHdEpTNsgZLKb6ofL1sVDPY3pF5zCxArgMWP
S9sZAmt5DHaC1uqyLK9ZovWYDO/pqWvVuU+jf6ZVgqAg+phm/EwQd7RSEYjyT2UB
BTah2vLrUKcgcS5z1yThT0Qtmm6MiSGgbxwcw3ZhjbzBn/GPF/h2ANZ6zOhTzMRW
OZmrL4ZJjBXY8n0DexaTMCF2EBlEgV5xO13xLbI0Qf6YYf6IxGMsKMSOYRzYnP82
k4gNAOOv
=k+i9
-----END PGP SIGNATURE-----

--s/l3CgOIzMHHjg/5--


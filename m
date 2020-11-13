Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDEIXT6QKGQEKLB3U7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C44B2B27E6
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 23:09:18 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id m64sf7640256pfm.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 14:09:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605305357; cv=pass;
        d=google.com; s=arc-20160816;
        b=qJgLp6bx1H3ZRQwa+0Yap/3NKs78Pt8lpB26GRdb05TVpBYEwW3BRtlHKncK91nxJT
         on8514PzNGWomS2yd6Je5NGKmDEtzBkh4+dHJdyggolg9sSM+6OolkmmbrmT5jgNqEwk
         mFTGs5uwbTHsGMGocEE3/3bwGa8aumMfG47o/y8Z4RsLBK4JDnOkJg4lx9ysKPRZSiyE
         otv1r9iGKhIOClhNTjxrbWsAfAfBXUgsNdKXkzjkCRg/JPQqTVqSSDMRfqjqEhzZa8P/
         Iq+Dz3B+usxzH1i7sS9yaauNORrE2Rwc1Z8w0WSgQiLajEgCXY2RC0NKuWUWBWphD5QL
         8WJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PCB5udNNUc0i71G6hDH4ntIwKQCuwt8NwgxHQzPF7kI=;
        b=dVx1TYA8ZDMqLIFfHSqumzZiRh40c4m9r1GiKKBNcDIuUu47NXsSYiTaYiJODHG6A1
         5Q+porcyTWuNYTELb5IfspNvOl4wukWMmpgTjPWd/zmJ4rtcLdUGY6gqKXtk6BpEbBAC
         83p7tsKtbl2OO+sHIDPeTgcJvu5SxVt5gwigpoBgvQobgdwg9GRdyWBZhCUJRxaxuj8z
         WEpxjacI0h4RFcE4S5o8JHzgIJduuFzjXNhhBbVegCy9+qXDgovU86G4A2yzsq/+NXeP
         DoBWX1tHsEwGI+EvndSXIPQZGwD31HVAz3Up1xt5GyVHeEj1P0WP0hnh4rh7XyGB/cLZ
         tqYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h4DH564y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PCB5udNNUc0i71G6hDH4ntIwKQCuwt8NwgxHQzPF7kI=;
        b=BKd9+BkWC6J++bOSlLKLOJBLFc+ukeqcUPZZUr9eLAJuJLtUl4Gauq6B4k7tSB3cqr
         ojNyBOJkiPt8i6vtb48OKg08wk2XGMYDGFMObaC42uyX6jyr0yQsWi8/+Jcj7w2nq+XP
         WPT9nXtxmYKzh2ZRjW0Z1581lQ6ak1gzU2T5bnxqREpBL9tkmxMcNsTFzg22ADPkbJKD
         xczMhd+L+yqVcVQjrtUlmMkkR7t62WC7TJjKcgoFplUuivVe3cfFZ79TuIwdNSoGx0AE
         JHfbg6TjGAxCV/Ourz6/356pULEKcZoGf4oHPRwLQLdO55/wYj9HUykxj3yQkLPd1UWH
         PDIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PCB5udNNUc0i71G6hDH4ntIwKQCuwt8NwgxHQzPF7kI=;
        b=oO2ynqYDkA6JKsGVkGTTcBVsjWVv6Rlw/NRXhVSVV7I2xAidcZyiFMkRQ5gFUrkA9i
         4wppoBf9vz5z40ksRlFMplKGfym5dvWbpV1c2h/faq6Hhims+fZXn5+9sJBJOZIaCPmu
         2RJD0jFD8hp4mo+43i6FOfKIfEL5Eb49gSOzjMm58O3hPEecSVCyfyZS7szoSTFeYUfg
         XTMdBrUqISlFBalbKhh63nodv8YHX7pe9FdUREFR69HjmNsdZKh/LPhSyMd7kHO8qyXT
         cyTaiEp7XCFXrPoTqSNgEZhq+z1cGNa2JVCcbg2KNlTcMVH7bKKVAkdA1lxcJBAGSgrE
         ONYQ==
X-Gm-Message-State: AOAM531n4gn1czWAqPZrltDDODavLZznvP870IP+pIPNWF0PlKNqBQ19
	gNGCmL1Ikbig5KNr/dIKkB0=
X-Google-Smtp-Source: ABdhPJxxAaDwxhkaSSnZPvkY0Coilss9DMJxgJnYaqFhfkKv0T+Luz+Z5ZekgvggphoVUo+lmIJlpg==
X-Received: by 2002:a17:90a:6042:: with SMTP id h2mr5249685pjm.77.1605305357081;
        Fri, 13 Nov 2020 14:09:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a0e:: with SMTP id o14ls4382432pjo.1.canary-gmail;
 Fri, 13 Nov 2020 14:09:16 -0800 (PST)
X-Received: by 2002:a17:90b:1942:: with SMTP id nk2mr5064748pjb.168.1605305356600;
        Fri, 13 Nov 2020 14:09:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605305356; cv=none;
        d=google.com; s=arc-20160816;
        b=WZyiCVlkUKPNkmott9BEveMxA7PvXHc0OgziRUUjGnhULv1a4N+C0CcfQlmZd7jUt1
         WhbyApD2XXVE/2cclnJ/+QhOGEOsvfJeEO0fpVLH7H7OB9yXZrKMtqL1cr0R3aULx873
         i3Cw333yNYEVMDizbS0MzKwW6qnAD1kTPCcvPe4DaMfsAg64lMoXO3Xgrin3ISD2g4vr
         ErUZmdQLt/ojbFE6BBVNWDYIfHmCCl5N0hsRr30Z6b373gBj01Iz2f0BsrUKtul9HdKE
         run0dXFB6DIAuTwfJ36E/wpHhAdQ1MBgtJvenhc8MsJFp3AAnC4Pjw8JjgI9w44oMlzr
         85YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wCU/niw5gKH9uSaGHuyc/s8PWFbeWcZQwsAixcABotQ=;
        b=YomJVu6pquTv0fiO+U45iS1umsv/RVjvpujMxe4v8HUZ2Txoz4ahWNst7C4bzb+7XC
         YsPMdqucmMbVuMapRLgQk2SMW3hdLAOQO1A614DLp35ykMVqKZMKT5sxqHV+QwiGB7Y5
         Cyl4TKL/05U9GVheRB2Fpg8qPu3MudgPd+/9vCQYyDGkEFkC4zTOA/yQ8MCX92D5ge4b
         uO+aMZ25a0ZWKL7MJ/LyZqXHSCf8ql6ixZBmOec0xl5QZiad7IQGxd1Xu/oI84RlQLYH
         Pi8WMnuJ8nvZqw0gVlqZCBnjxFX0oQeWwEt8iOrd+JcbclFbhle8p0CYWsnB0DtbOhqT
         f5HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h4DH564y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id o24si724659pjt.3.2020.11.13.14.09.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 14:09:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id f18so8195117pgi.8
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 14:09:16 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr5202110pjj.101.1605305356218;
 Fri, 13 Nov 2020 14:09:16 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com>
 <BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <BYAPR11MB3256E6E37618702C5EA761A087E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <BYAPR11MB3256DD34C3DABD2CB4FE347D87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3256DD34C3DABD2CB4FE347D87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 14:09:04 -0800
Message-ID: <CAKwvOdmQdH3dARiP9VDPG59sgsqkmvp5AcCKrNNUuNDC5k1BwA@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: "Moore, Robert" <robert.moore@intel.com>
Cc: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="00000000000083df0d05b404477c"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h4DH564y;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d
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

--00000000000083df0d05b404477c
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 13, 2020 at 1:45 PM Moore, Robert <robert.moore@intel.com> wrote:
>
> BTW, if you can make a pull request for the patch up on github, that would help.

https://github.com/acpica/acpica/pull/650

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmQdH3dARiP9VDPG59sgsqkmvp5AcCKrNNUuNDC5k1BwA%40mail.gmail.com.

--00000000000083df0d05b404477c
Content-Type: text/plain; charset="US-ASCII"; name="0001-ACPICA-fix-Wfallthrough.patch.txt"
Content-Disposition: attachment; 
	filename="0001-ACPICA-fix-Wfallthrough.patch.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_khgtcny00>
X-Attachment-Id: f_khgtcny00

RnJvbSA0NDEzMTQ0ZDA4MDRjMWQ4MGE5Y2M2MjVhMjcxZTdjYzJmYjZkZDM4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xl
LmNvbT4KRGF0ZTogRnJpLCAxMyBOb3YgMjAyMCAxMzo0NjowNCAtMDgwMApTdWJqZWN0OiBbUEFU
Q0hdIEFDUElDQTogZml4IC1XZmFsbHRocm91Z2gKCkdDQyA3LjEgZ2FpbmVkIC1XaW1wbGljaXQt
ZmFsbHRocm91Z2ggdG8gd2FybiBvbiBpbXBsaWNpdCBmYWxsdGhyb3VnaCwKYXMgd2VsbCBhcyBf
X2F0dHJpYnV0ZV9fKChfX2ZhbGx0aHJvdWdoX18pKSBhbmQgY29tbWVudHMgdG8gZXhwbGljaXRs
eQpkZW5vdGUgdGhhdCBjYXNlcyBvZiBmYWxsdGhyb3VnaCB3ZXJlIGludGVudGlvbmFsLiBDbGFu
ZyBhbHNvIHN1cHBvcnRzCnRoaXMgd2FybmluZyBhbmQgc3RhdGVtZW50IGF0dHJpYnV0ZSwgYnV0
IG5vdCB0aGUgY29tbWVudCBmb3JtLgoKUm9iZXJ0IE1vb3JlIHByb3ZpZGVzIGFkZGl0aW9uYWwg
Y29udGV4dCBhYm91dCB0aGUgbGludCBjb21tZW50cyBiZWluZwpyZW1vdmVkLiBUaGV5IHdlcmUg
Zm9yICJhbiBvbGQgdmVyc2lvbiBvZiBQQy1MaW50LCB3aGljaCB3ZSBkb24ndCB1c2UKYW55bW9y
ZS4iIERyb3AgdGhvc2UuCgpTdWdnZXN0ZWQtYnk6IFJvYmVydCBNb29yZSA8cm9iZXJ0Lm1vb3Jl
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTmljayBEZXNhdWxuaWVycyA8bmRlc2F1bG5pZXJz
QGdvb2dsZS5jb20+Ci0tLQogZHJpdmVycy9hY3BpL2FjcGljYS9kc2NvbnRyb2wuYyB8ICAyICst
CiBkcml2ZXJzL2FjcGkvYWNwaWNhL2Rzd2V4ZWMuYyAgIHwgIDMgKy0tCiBkcml2ZXJzL2FjcGkv
YWNwaWNhL2Rzd2xvYWQuYyAgIHwgIDIgKy0KIGRyaXZlcnMvYWNwaS9hY3BpY2EvZHN3bG9hZDIu
YyAgfCAgMiArLQogZHJpdmVycy9hY3BpL2FjcGljYS9leGZsZGlvLmMgICB8ICAyICstCiBkcml2
ZXJzL2FjcGkvYWNwaWNhL2V4cmVzb3AuYyAgIHwgIDQgKystLQogZHJpdmVycy9hY3BpL2FjcGlj
YS9leHN0b3JlLmMgICB8ICA0ICsrLS0KIGRyaXZlcnMvYWNwaS9hY3BpY2EvaHdncGUuYyAgICAg
fCAgMiArLQogZHJpdmVycy9hY3BpL2FjcGljYS91dGRlbGV0ZS5jICB8ICAyICstCiBpbmNsdWRl
L2FjcGkvYWN0eXBlcy5oICAgICAgICAgIHwgIDYgKysrKysrCiBpbmNsdWRlL2FjcGkvcGxhdGZv
cm0vYWNnY2MuaCAgIHwgMTUgKysrKysrKysrKysrKysrCiAxMSBmaWxlcyBjaGFuZ2VkLCAzMiBp
bnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkv
YWNwaWNhL2RzY29udHJvbC5jIGIvZHJpdmVycy9hY3BpL2FjcGljYS9kc2NvbnRyb2wuYwppbmRl
eCA0YjViNmU4NTlmNjIuLmI1OGZmYzdhY2RiOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9hY3BpL2Fj
cGljYS9kc2NvbnRyb2wuYworKysgYi9kcml2ZXJzL2FjcGkvYWNwaWNhL2RzY29udHJvbC5jCkBA
IC02Miw3ICs2Miw3IEBAIGFjcGlfZHNfZXhlY19iZWdpbl9jb250cm9sX29wKHN0cnVjdCBhY3Bp
X3dhbGtfc3RhdGUgKndhbGtfc3RhdGUsCiAJCQl9CiAJCX0KIAotCQkvKmxpbnQgLWZhbGx0aHJv
dWdoICovCisJCUFDUElfRkFMTFRIUk9VR0g7CiAKIAljYXNlIEFNTF9JRl9PUDoKIAkJLyoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvYWNwaS9hY3BpY2EvZHN3ZXhlYy5jIGIvZHJpdmVycy9hY3BpL2Fj
cGljYS9kc3dleGVjLmMKaW5kZXggMWQ0ZjhjODEwMjhjLi40YTk3OTkyNDZmYWUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvYWNwaS9hY3BpY2EvZHN3ZXhlYy5jCisrKyBiL2RyaXZlcnMvYWNwaS9hY3Bp
Y2EvZHN3ZXhlYy5jCkBAIC01OTgsOCArNTk4LDcgQEAgYWNwaV9zdGF0dXMgYWNwaV9kc19leGVj
X2VuZF9vcChzdHJ1Y3QgYWNwaV93YWxrX3N0YXRlICp3YWxrX3N0YXRlKQogCQkJCQlicmVhazsK
IAkJCQl9CiAKLQkJCQkvKiBGYWxsIHRocm91Z2ggKi8KLQkJCQkvKmxpbnQgLWZhbGx0aHJvdWdo
ICovCisJCQkJQUNQSV9GQUxMVEhST1VHSDsKIAogCQkJY2FzZSBBTUxfSU5UX0VWQUxfU1VCVFJF
RV9PUDoKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY3BpL2FjcGljYS9kc3dsb2FkLmMgYi9kcml2
ZXJzL2FjcGkvYWNwaWNhL2Rzd2xvYWQuYwppbmRleCAyNzA2OTMyNWI2ZGUuLmRkOTdjODZmOGU0
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9hY3BpL2FjcGljYS9kc3dsb2FkLmMKKysrIGIvZHJpdmVy
cy9hY3BpL2FjcGljYS9kc3dsb2FkLmMKQEAgLTIyNCw3ICsyMjQsNyBAQCBhY3BpX2RzX2xvYWQx
X2JlZ2luX29wKHN0cnVjdCBhY3BpX3dhbGtfc3RhdGUgKndhbGtfc3RhdGUsCiAJCQkJYnJlYWs7
CiAJCQl9CiAKLQkJCS8qbGludCAtZmFsbHRocm91Z2ggKi8KKwkJCUFDUElfRkFMTFRIUk9VR0g7
CiAKIAkJZGVmYXVsdDoKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9hY3BpL2FjcGljYS9kc3dsb2Fk
Mi5jIGIvZHJpdmVycy9hY3BpL2FjcGljYS9kc3dsb2FkMi5jCmluZGV4IGVkYWRiZTE0NjUwNi4u
ZDlhM2RmY2E3NTU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2FjcGkvYWNwaWNhL2Rzd2xvYWQyLmMK
KysrIGIvZHJpdmVycy9hY3BpL2FjcGljYS9kc3dsb2FkMi5jCkBAIC0yMTQsNyArMjE0LDcgQEAg
YWNwaV9kc19sb2FkMl9iZWdpbl9vcChzdHJ1Y3QgYWNwaV93YWxrX3N0YXRlICp3YWxrX3N0YXRl
LAogCQkJCWJyZWFrOwogCQkJfQogCi0JCQkvKmxpbnQgLWZhbGx0aHJvdWdoICovCisJCQlBQ1BJ
X0ZBTExUSFJPVUdIOwogCiAJCWRlZmF1bHQ6CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvYWNwaS9h
Y3BpY2EvZXhmbGRpby5jIGIvZHJpdmVycy9hY3BpL2FjcGljYS9leGZsZGlvLmMKaW5kZXggYWRl
MzVmZjFjN2JhLi5jZGUyNGUwZmE2YTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYWNwaS9hY3BpY2Ev
ZXhmbGRpby5jCisrKyBiL2RyaXZlcnMvYWNwaS9hY3BpY2EvZXhmbGRpby5jCkBAIC00MzQsNyAr
NDM0LDcgQEAgYWNwaV9leF9maWVsZF9kYXR1bV9pbyh1bmlvbiBhY3BpX29wZXJhbmRfb2JqZWN0
ICpvYmpfZGVzYywKIAkJICogcmVnaW9uX2ZpZWxkIGNhc2UgYW5kIHdyaXRlIHRoZSBkYXR1bSB0
byB0aGUgT3BlcmF0aW9uIFJlZ2lvbgogCQkgKi8KIAotCQkvKmxpbnQgLWZhbGx0aHJvdWdoICov
CisJCUFDUElfRkFMTFRIUk9VR0g7CiAKIAljYXNlIEFDUElfVFlQRV9MT0NBTF9SRUdJT05fRklF
TEQ6CiAJCS8qCmRpZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkvYWNwaWNhL2V4cmVzb3AuYyBiL2Ry
aXZlcnMvYWNwaS9hY3BpY2EvZXhyZXNvcC5jCmluZGV4IDRkMWIyMjk3MWQ1OC4uNGEwZjhiOGJm
ZTYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2FjcGkvYWNwaWNhL2V4cmVzb3AuYworKysgYi9kcml2
ZXJzL2FjcGkvYWNwaWNhL2V4cmVzb3AuYwpAQCAtMTk4LDcgKzE5OCw3IEBAIGFjcGlfZXhfcmVz
b2x2ZV9vcGVyYW5kcyh1MTYgb3Bjb2RlLAogCiAJCQkJCXRhcmdldF9vcCA9IEFNTF9ERUJVR19P
UDsKIAotCQkJCQkvKmxpbnQgLWZhbGx0aHJvdWdoICovCisJCQkJCUFDUElfRkFMTFRIUk9VR0g7
CiAKIAkJCQljYXNlIEFDUElfUkVGQ0xBU1NfQVJHOgogCQkJCWNhc2UgQUNQSV9SRUZDTEFTU19M
T0NBTDoKQEAgLTI2NCw3ICsyNjQsNyBAQCBhY3BpX2V4X3Jlc29sdmVfb3BlcmFuZHModTE2IG9w
Y29kZSwKIAkJCSAqIEVsc2Ugbm90IGEgc3RyaW5nIC0gZmFsbCB0aHJvdWdoIHRvIHRoZSBub3Jt
YWwgUmVmZXJlbmNlCiAJCQkgKiBjYXNlIGJlbG93CiAJCQkgKi8KLQkJCS8qbGludCAtZmFsbHRo
cm91Z2ggKi8KKwkJCUFDUElfRkFMTFRIUk9VR0g7CiAKIAkJY2FzZSBBUkdJX1JFRkVSRU5DRToJ
LyogUmVmZXJlbmNlczogKi8KIAkJY2FzZSBBUkdJX0lOVEVHRVJfUkVGOgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9hY3BpL2FjcGljYS9leHN0b3JlLmMgYi9kcml2ZXJzL2FjcGkvYWNwaWNhL2V4c3Rv
cmUuYwppbmRleCAzYWRjMGEyOWQ4OTAuLjhmZTMzMDUxMjc1ZCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9hY3BpL2FjcGljYS9leHN0b3JlLmMKKysrIGIvZHJpdmVycy9hY3BpL2FjcGljYS9leHN0b3Jl
LmMKQEAgLTk2LDcgKzk2LDcgQEAgYWNwaV9leF9zdG9yZSh1bmlvbiBhY3BpX29wZXJhbmRfb2Jq
ZWN0ICpzb3VyY2VfZGVzYywKIAkJCXJldHVybl9BQ1BJX1NUQVRVUyhBRV9PSyk7CiAJCX0KIAot
CQkvKmxpbnQgLWZhbGx0aHJvdWdoICovCisJCUFDUElfRkFMTFRIUk9VR0g7CiAKIAlkZWZhdWx0
OgogCkBAIC00MjIsNyArNDIyLDcgQEAgYWNwaV9leF9zdG9yZV9vYmplY3RfdG9fbm9kZSh1bmlv
biBhY3BpX29wZXJhbmRfb2JqZWN0ICpzb3VyY2VfZGVzYywKIAkJCQlicmVhazsKIAkJCX0KIAot
CQkJLyogRmFsbHRocm91Z2ggKi8KKwkJCUFDUElfRkFMTFRIUk9VR0g7CiAKIAkJY2FzZSBBQ1BJ
X1RZUEVfREVWSUNFOgogCQljYXNlIEFDUElfVFlQRV9FVkVOVDoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvYWNwaS9hY3BpY2EvaHdncGUuYyBiL2RyaXZlcnMvYWNwaS9hY3BpY2EvaHdncGUuYwppbmRl
eCBiMTNhNGVkNWJjNjMuLjBjODQzMDBlOTE1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9hY3BpL2Fj
cGljYS9od2dwZS5jCisrKyBiL2RyaXZlcnMvYWNwaS9hY3BpY2EvaHdncGUuYwpAQCAtMTY3LDcg
KzE2Nyw3IEBAIGFjcGlfaHdfbG93X3NldF9ncGUoc3RydWN0IGFjcGlfZ3BlX2V2ZW50X2luZm8g
KmdwZV9ldmVudF9pbmZvLCB1MzIgYWN0aW9uKQogCQkJcmV0dXJuIChBRV9CQURfUEFSQU1FVEVS
KTsKIAkJfQogCi0JCS8qbGludCAtZmFsbHRocm91Z2ggKi8KKwkJQUNQSV9GQUxMVEhST1VHSDsK
IAogCWNhc2UgQUNQSV9HUEVfRU5BQkxFOgogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2FjcGkvYWNw
aWNhL3V0ZGVsZXRlLmMgYi9kcml2ZXJzL2FjcGkvYWNwaWNhL3V0ZGVsZXRlLmMKaW5kZXggNGMw
ZDRlNDM0MTk2Li42MjRhMjY3OTRkNTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvYWNwaS9hY3BpY2Ev
dXRkZWxldGUuYworKysgYi9kcml2ZXJzL2FjcGkvYWNwaWNhL3V0ZGVsZXRlLmMKQEAgLTExMiw3
ICsxMTIsNyBAQCBzdGF0aWMgdm9pZCBhY3BpX3V0X2RlbGV0ZV9pbnRlcm5hbF9vYmoodW5pb24g
YWNwaV9vcGVyYW5kX29iamVjdCAqb2JqZWN0KQogCQkJCQkJICAgICAgIGdwZV9ibG9jayk7CiAJ
CX0KIAotCQkvKmxpbnQgLWZhbGx0aHJvdWdoICovCisJCUFDUElfRkFMTFRIUk9VR0g7CiAKIAlj
YXNlIEFDUElfVFlQRV9QUk9DRVNTT1I6CiAJY2FzZSBBQ1BJX1RZUEVfVEhFUk1BTDoKZGlmZiAt
LWdpdCBhL2luY2x1ZGUvYWNwaS9hY3R5cGVzLmggYi9pbmNsdWRlL2FjcGkvYWN0eXBlcy5oCmlu
ZGV4IDY0N2NiMTFkMGEwYS4uMmEzMjU5MzY5MWJjIDEwMDY0NAotLS0gYS9pbmNsdWRlL2FjcGkv
YWN0eXBlcy5oCisrKyBiL2luY2x1ZGUvYWNwaS9hY3R5cGVzLmgKQEAgLTEyODYsNCArMTI4Niwx
MCBAQCB0eXBlZGVmIGVudW0gewogCiAjZGVmaW5lIEFDUElfT1BUX0VORCAgICAgICAgICAgICAg
ICAgICAgLTEKIAorLyogRGVmaW5pdGlvbnMgZm9yIGV4cGxpY2l0IGZhbGx0aHJvdWdoICovCisK
KyNpZm5kZWYgQUNQSV9GQUxMVEhST1VHSAorI2RlZmluZSBBQ1BJX0ZBTExUSFJPVUdIIGRvIHt9
IHdoaWxlKDApCisjZW5kaWYKKwogI2VuZGlmCQkJCS8qIF9fQUNUWVBFU19IX18gKi8KZGlmZiAt
LWdpdCBhL2luY2x1ZGUvYWNwaS9wbGF0Zm9ybS9hY2djYy5oIGIvaW5jbHVkZS9hY3BpL3BsYXRm
b3JtL2FjZ2NjLmgKaW5kZXggN2Q2M2QwM2NmNTA3Li45MWY3YTAyYzc5OGEgMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvYWNwaS9wbGF0Zm9ybS9hY2djYy5oCisrKyBiL2luY2x1ZGUvYWNwaS9wbGF0Zm9y
bS9hY2djYy5oCkBAIC01NCw0ICs1NCwxOSBAQCB0eXBlZGVmIF9fYnVpbHRpbl92YV9saXN0IHZh
X2xpc3Q7CiAKICNkZWZpbmUgQUNQSV9VU0VfTkFUSVZFX01BVEg2NAogCisvKiBHQ0MgZGlkIG5v
dCBzdXBwb3J0IF9faGFzX2F0dHJpYnV0ZSB1bnRpbCA1LjEuICovCisKKyNpZm5kZWYgX19oYXNf
YXR0cmlidXRlCisjZGVmaW5lIF9faGFzX2F0dHJpYnV0ZSh4KSAwCisjZW5kaWYKKworLyoKKyAq
IEV4cGxpY3RseSBtYXJrIGludGVudGlvbmFsIGV4cGxpY2l0IGZhbGx0aHJvdWdoIHRvIHNpbGVu
Y2UKKyAqIC1XaW1wbGljaXQtZmFsbHRocm91Z2ggaW4gR0NDIDcuMSsuCisgKi8KKworI2lmIF9f
aGFzX2F0dHJpYnV0ZShfX2ZhbGx0aHJvdWdoX18pCisjZGVmaW5lIEFDUElfRkFMTFRIUk9VR0gg
X19hdHRyaWJ1dGVfXygoX19mYWxsdGhyb3VnaF9fKSkKKyNlbmRpZgorCiAjZW5kaWYJCQkJLyog
X19BQ0dDQ19IX18gKi8KLS0gCjIuMjkuMi4yOTkuZ2RjMTEyMTgyM2MtZ29vZwoK
--00000000000083df0d05b404477c--

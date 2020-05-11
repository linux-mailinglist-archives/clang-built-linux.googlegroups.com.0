Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBW5Q432QKGQE7KFT33Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 5684F1CE284
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 20:24:28 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id u11sf5395550wmc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 11:24:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589221468; cv=pass;
        d=google.com; s=arc-20160816;
        b=TWyxeHF10HDBZc/Pj/OJNbM9bwV9DDXKDLMHg5Iap3yuDPG3MtTNCjc6ELi4Sy9Mnf
         i39oPYSkWf0OkfUd2G98CvCsdDRpyLEXNGyTlWCyefqm48S63dRMG4OVvyxOpKLutc8h
         YfJ+F9gAOuycGT+tgvXxkBSj8gLx690wX5/6nBvEapxmmGLi9kpWyTuz8VwApYqxOEf6
         R93v34YcO/AnAzpot642aYyyzB9d4bWlvvSIoCPKuKLAUKdt9Cq6rykNONNWEjcxkJns
         5Qa/v82svZ5iw3YEn6M+DTxkO5DcVZWdidYJcOptacl08OLRTr+LobhGeN5CeCxzpDEZ
         jF0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=lZNDuULNPOz2/HPUwWEMFatHDz4Jt+if5jDdDyae9hA=;
        b=U+OJXpk+HrWFBWJgQ4wfUPk12/FPMmofhej27bYhtdCFDzmxJrhZcT7ipmMy0T348D
         YiGqOdKapxt5q6Zl13s6zs+fkkyWm2NEi2KFNogtF5a2ubyETjXDNtbPG4k5GWsHUwUk
         R4nDtcdpHZhq8xjGZBcpDiHbi+tbwdWKrELiZfR5uqYCtz1Yqg86G1eQFTxBXFGvpkjl
         YO1DBlHQrFGz1eQ4Gh4RsQbl4mMY1NfPSSMv0tFfHd3Q4hf3OicbltuJLD5Y4OEFLoxt
         +4tUcOEa4AA7YFhSvOW90fUkUqqzEXRPU0ZVrEMqKWR/WY4QQH0bRE8ywnmJ5e5OIw9Z
         KD9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="g/MBnQ5L";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lZNDuULNPOz2/HPUwWEMFatHDz4Jt+if5jDdDyae9hA=;
        b=qW7JKmxWJMH88BkgtfXD26zo25vLORC4nY5pDxxEgoad6XeD0Ajsvhn+4fqQOqrTcO
         klrDj19ZaBCbj+4fcIhUO9+YpMMjmRrQiIiBi3bwoeFMEaoAvaQGmWpW9WlK+53GgD6a
         EkwPReRMy/HTkJYU/5tqo0Q58A0bk2EKyZBR4A6cPgnNXBH5/zAs8AEnJM1nZkf3+lNe
         fX0x1ZLMO++/1ghEd88B4el6Bqx3tcKsZoX6rJrEGfYN7xg+ZCzJ903bYNAiG6abS/Tj
         o1u7N4YZHrlNSEsaAh5QxfV/RZir0jSVR1cENc+jnc2yFoBVzkaSP5iEn75uKXNAhR3s
         mjkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lZNDuULNPOz2/HPUwWEMFatHDz4Jt+if5jDdDyae9hA=;
        b=Z72Mn0QRa0uuZsx+DuJt9EDxdQwufodXnxJc7TFo5iVzk3hRAYVqH2aI43lY4oogoc
         3lPXtxCebJsvbVRSsXNgb/goWPyzki4af4+C++uoJJh9Qh16DAIYQeAXjzGPhgToMsYA
         Vpy7Xe1AnIPQ96WjJtDmiaUJ44CpObE0Ngz7jWP1GLEGe42haCSKvFyBrSY8hRV5/2AC
         85xfeoPKDGhVs4cvvNe+ojjkJTetlzt4wkNlFiYSlnXgB4fGYv7J1Kx6zyml1kFT5mBs
         VlMfLFqEA/aRf6RcXT5xIJBL4rz96xLUaHdoRB97t9q1JE/gdlCuSCdVohYNwqtv3jNx
         DpYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuboOKWz7QrtZ+jmeb9/J2mMf1ojj7GW5RBftwlde5wAYJZgiVzw
	KC5pXKu2pXT3+ZLU4CrnYN4=
X-Google-Smtp-Source: APiQypKn6cuprLuyVmAlijTeQjecP1bK4swiYjc86/7hZNeGz9Bnkczt/PIBBwSRwv3YD8VeS3xQWw==
X-Received: by 2002:adf:fa44:: with SMTP id y4mr7678710wrr.135.1589221467978;
        Mon, 11 May 2020 11:24:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1d89:: with SMTP id d131ls240329wmd.0.gmail; Mon, 11 May
 2020 11:24:27 -0700 (PDT)
X-Received: by 2002:a7b:c5d3:: with SMTP id n19mr25752665wmk.21.1589221467346;
        Mon, 11 May 2020 11:24:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589221467; cv=none;
        d=google.com; s=arc-20160816;
        b=uhl867Ov4iRQqDwVyyib/Q+3PVQ2tcp4WK8Uz+gHc2kcNhI77bqtyCf76EnqgkrtzR
         TkHdupG3b+KRwaWZqSzJ0AHScZsd66WpuOdjYiSXRGQ3oC2OnLvOr1O0VeT1OTfFZ0iL
         ycUvUzBwNFwrjScbxMMq73Z64UkQjud4aV+TyCoR30TaPCp+an6ryyPqjqnoD7ichLWr
         vpwZd+M9xXdXcqJisR2XzkkoKThFgepIRLDv1Qnyo3VyTp953UvxVHxCTPzGCBLWib5q
         YezVwg+WvYveEFz2QiY0GRqb6XkYdFGDbX//KhmwjNQTvJXePHQv5vUZvMrxuvolHw2f
         CQHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xryJwG59JLB17PZEyr7DCd9/6LaHNOFAsde4B/bIMlo=;
        b=Yp1Uc1v+p8jDUp4J38H/4U6Yi8l8cVeWqnsf3a+FBFyCc1sQOktcXQsJmBa4Mj438E
         PcAwl8+OJhZ6UuviGcF0JGV6+tCnzlKJTfoAZ0wHxhgxzqG7v/+PriF2u5dOPfh7yGKe
         D8GEIKPcWAALiz9Y+7FUHI58a2TT8RlFYEz6JLxZEYYl6wXs2K/dJ4r/D46VxnXMm0Mv
         ZWvk5qWBTBaQfyaloVSlK+IquPmVy0oyLnE6CJYfRqvh1IvtVPrEOZd8hyij852OyfUQ
         ZsyzYS6fPIHBbdZjCTxSVvrKSuUQLJXl6fgx7Wlg2S44PucEhWgWYlnVgxLsTLMfTeDa
         h5MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="g/MBnQ5L";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id a2si739250wrv.4.2020.05.11.11.24.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 11:24:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id c21so3744788lfb.3
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 11:24:27 -0700 (PDT)
X-Received: by 2002:a19:6b13:: with SMTP id d19mr12133559lfa.126.1589221466011;
        Mon, 11 May 2020 11:24:26 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com. [209.85.208.169])
        by smtp.gmail.com with ESMTPSA id p8sm10511268ljn.93.2020.05.11.11.24.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 11:24:25 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id w20so10640729ljj.0
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 11:24:24 -0700 (PDT)
X-Received: by 2002:a2e:9a54:: with SMTP id k20mr11787437ljj.265.1589221464037;
 Mon, 11 May 2020 11:24:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com>
 <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com> <CAHk-=wif=_ZomkWJAmQRCUAMHQ72V3NEQ-OteiPE56K7KoSjbQ@mail.gmail.com>
In-Reply-To: <CAHk-=wif=_ZomkWJAmQRCUAMHQ72V3NEQ-OteiPE56K7KoSjbQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 11 May 2020 11:24:07 -0700
X-Gmail-Original-Message-ID: <CAHk-=whhCBvjXtRiFM2JEZ4XyBmuPprvdo5tpPVBqUhkRszxiQ@mail.gmail.com>
Message-ID: <CAHk-=whhCBvjXtRiFM2JEZ4XyBmuPprvdo5tpPVBqUhkRszxiQ@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, Dmitry Golovin <dima@golovin.in>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/mixed; boundary="000000000000d91fe305a563741a"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b="g/MBnQ5L";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

--000000000000d91fe305a563741a
Content-Type: text/plain; charset="UTF-8"

On Mon, May 11, 2020 at 11:12 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Would using "__builtin_choose_expr()" be able to avoid this whole issue?

We actually have a fair amount of "pick expression based on size", so
with a few helper macros we could make the code look better than the
case statements too.

Something (ENTIRELY UNTESTED!) like the attached patch, perhaps?

NOTE! I only converted one single use to that "pick_size_xyz()" model.
If this actually works for clang too, we could do the others.

I guess I should just test it, since I have that clang tree.

                  Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhhCBvjXtRiFM2JEZ4XyBmuPprvdo5tpPVBqUhkRszxiQ%40mail.gmail.com.

--000000000000d91fe305a563741a
Content-Type: application/octet-stream; name=patch
Content-Disposition: attachment; filename=patch
Content-Transfer-Encoding: base64
Content-ID: <f_ka2tez6f0>
X-Attachment-Id: f_ka2tez6f0

IGFyY2gveDg2L2luY2x1ZGUvYXNtL3BlcmNwdS5oIHwgMzEgKysrKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2FyY2gveDg2L2luY2x1ZGUvYXNtL3BlcmNwdS5oIGIvYXJjaC94
ODYvaW5jbHVkZS9hc20vcGVyY3B1LmgKaW5kZXggMjI3ODc5N2M3NjlkLi5iNDc5YTBlNjUwZTUg
MTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2luY2x1ZGUvYXNtL3BlcmNwdS5oCisrKyBiL2FyY2gveDg2
L2luY2x1ZGUvYXNtL3BlcmNwdS5oCkBAIC04Niw2ICs4NiwxNyBAQAogLyogRm9yIGFyY2gtc3Bl
Y2lmaWMgY29kZSwgd2UgY2FuIHVzZSBkaXJlY3Qgc2luZ2xlLWluc24gb3BzICh0aGV5CiAgKiBk
b24ndCBnaXZlIGFuIGx2YWx1ZSB0aG91Z2gpLiAqLwogZXh0ZXJuIHZvaWQgX19iYWRfcGVyY3B1
X3NpemUodm9pZCk7CitleHRlcm4gdm9pZCBfX2JhZF9leHByX3NpemUodm9pZCk7CisKKyNkZWZp
bmUgcGlja190eXBlX2V4cHJlc3Npb24oeCwgZTgsIGUxNiwgZTMyLCBlNjQpCVwKKwlfX2J1aWx0
aW5fY2hvb3NlX2V4cHIoc2l6ZW9mKHgpPT0xLCBlOCwJCVwKKwlfX2J1aWx0aW5fY2hvb3NlX2V4
cHIoc2l6ZW9mKHgpPT0yLCBlMTYsCVwKKwlfX2J1aWx0aW5fY2hvb3NlX2V4cHIoc2l6ZW9mKHgp
PT00LCBlMzIsCVwKKwlfX2J1aWx0aW5fY2hvb3NlX2V4cHIoc2l6ZW9mKHgpPT04LCBlNjQsCVwK
KwlfX2JhZF9leHByX3NpemUoKSkpKSkKKworI2RlZmluZSBwaWNrX3R5cGVfc3RhdGVtZW50KHgs
IHM4LCBzMTYsIHMzMiwgczY0KSBcCisJcGlja190eXBlX2V4cHJlc3Npb24oeCwgKHtzODswO30p
LCAoe3MxNjswO30pLCh7czMyOzA7fSksKHtzNjQ7MDt9KSkKIAogI2RlZmluZSBwZXJjcHVfdG9f
b3AocXVhbCwgb3AsIHZhciwgdmFsKQkJXAogZG8gewkJCQkJCQlcCkBAIC05NSwyOSArMTA2LDE5
IEBAIGRvIHsJCQkJCQkJXAogCQlwdG9fdG1wX18gPSAodmFsKTsJCQlcCiAJCSh2b2lkKXB0b190
bXBfXzsJCQlcCiAJfQkJCQkJCVwKLQlzd2l0Y2ggKHNpemVvZih2YXIpKSB7CQkJCVwKLQljYXNl
IDE6CQkJCQkJXAorCXBpY2tfdHlwZV9zdGF0ZW1lbnQodmFyLAkJCVwKIAkJYXNtIHF1YWwgKG9w
ICJiICUxLCJfX3BlcmNwdV9hcmcoMCkJXAogCQkgICAgOiAiK20iICh2YXIpCQkJXAotCQkgICAg
OiAicWkiICgocHRvX1RfXykodmFsKSkpOwkJXAotCQlicmVhazsJCQkJCVwKLQljYXNlIDI6CQkJ
CQkJXAorCQkgICAgOiAicWkiICgocHRvX1RfXykodmFsKSkpLAkJXAogCQlhc20gcXVhbCAob3Ag
IncgJTEsIl9fcGVyY3B1X2FyZygwKQlcCiAJCSAgICA6ICIrbSIgKHZhcikJCQlcCi0JCSAgICA6
ICJyaSIgKChwdG9fVF9fKSh2YWwpKSk7CQlcCi0JCWJyZWFrOwkJCQkJXAotCWNhc2UgNDoJCQkJ
CQlcCisJCSAgICA6ICJyaSIgKChwdG9fVF9fKSh2YWwpKSksCQlcCiAJCWFzbSBxdWFsIChvcCAi
bCAlMSwiX19wZXJjcHVfYXJnKDApCVwKIAkJICAgIDogIittIiAodmFyKQkJCVwKLQkJICAgIDog
InJpIiAoKHB0b19UX18pKHZhbCkpKTsJCVwKLQkJYnJlYWs7CQkJCQlcCi0JY2FzZSA4OgkJCQkJ
CVwKKwkJICAgIDogInJpIiAoKHB0b19UX18pKHZhbCkpKSwJCVwKIAkJYXNtIHF1YWwgKG9wICJx
ICUxLCJfX3BlcmNwdV9hcmcoMCkJXAogCQkgICAgOiAiK20iICh2YXIpCQkJXAotCQkgICAgOiAi
cmUiICgocHRvX1RfXykodmFsKSkpOwkJXAotCQlicmVhazsJCQkJCVwKLQlkZWZhdWx0OiBfX2Jh
ZF9wZXJjcHVfc2l6ZSgpOwkJCVwKLQl9CQkJCQkJXAorCQkgICAgOiAicmUiICgocHRvX1RfXyko
dmFsKSkpKTsJCVwKIH0gd2hpbGUgKDApCiAKIC8qCg==
--000000000000d91fe305a563741a--

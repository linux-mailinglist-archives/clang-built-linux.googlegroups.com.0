Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4EHQOAAMGQEHP6EGTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B802F6E12
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 23:21:37 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id m8sf5762654qvk.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 14:21:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610662896; cv=pass;
        d=google.com; s=arc-20160816;
        b=muihI5mu+UrKWd0pTLN+zmOKANSHctBgcFBRzi84nklERapdrEHxVLkK7Por/y0qi9
         Sg5KLiD0RNAzUlxyBtA1PZwGz6aDOlff/BqOCh8stHKB+svkHqT6j32z/YS4YcYqMjFf
         J7tyVjyLtewQ4YFcDJ+CtHqG4tWRmnSMHMZDXYExd+9Weu4m5NtmMJD2OmkptOlMmw6u
         KYE1Mab+0i+G7tsl3O/e/4/0S/eY9BsIBGImWg+I7JDaGWAlfA214fCNtmrZxSOSY2Ii
         eqrH9i6OUhpSB0hD6PVlRkAok5ZASuguCJeqkZnSybXpeV5uQvt5T5EGFF2QdqS4Vohc
         H7HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=LyYy5jGcUqv4zjUDxzOxdGkKrsnFhLNgV9JpUqx6zV8=;
        b=ytF07uBQUSeNLV6KVnGtbdN54wnn3RMRCgwfw1+1ulUTXg9jfiIqH/TmRYSMoqWEww
         q+oNfIkcNk338bF62dGFkwwjpSRVRJAr/YyP8GS5GaT8SacvAbZ2lwPr3aTo0bdg7Vjm
         tzWB2h+XCckkUwDIDtU+cMk0XXNmi6nKYyZHf9F1LYj/WmH7254B3TyXrgPje35x24ZG
         EjRe8Zle7Pox0ybf6SsMaDmJqNOBuAUggbRAfigiQnuGKecMFr22Ub4ENBX7kk41xvKd
         bki9+KrltvVuMsEfE1s6R+jKEbmNQCq9aHR0b82VEUln7yh1NHDO5l/yqknMQyvsqucr
         oDBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mXCeAv9Q;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LyYy5jGcUqv4zjUDxzOxdGkKrsnFhLNgV9JpUqx6zV8=;
        b=NWbKwdIHBVgatJErXtaUVxMr++pagjB/WLSMDh1GDsntw/6gyWpAqEnv3VAjDidAvT
         isQPe27/NTuYe1nGhb9o29IvJrxPua1TPKZhzP7JwIqxhZjxiLLoCwDaYcKsDvdMfWXW
         whQRD+iHl0LQSgqC7KFqFUsVcak4IQSaXbtAZ8ynmIbLwOIrFpZfSo61/ZDgP6emhEIx
         jRNPikZGsGDp90f/T3HtL/V3oxhO8Lt0aFkhLOkLioE2Mf6GrR9Sg5GzDPs2nRc2TIY1
         zLZU4IysZZ0UtIjUMCKzLe73O+rBof/I/ZAS1yjJuQZEc8IugE24VrhNVbZkB1rSxTOK
         VbeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LyYy5jGcUqv4zjUDxzOxdGkKrsnFhLNgV9JpUqx6zV8=;
        b=pk5PxvRs26Om2sx/hQVh9ep+AFJSuZv4/2sabW/et1MlHQYT3K2g7pZx3mHzf0ri76
         xhpaP2M6hQ8H0iwGSL30lmPUiEiuR1XX78hb2fQogdVnA8YaGaXpwq+3RPuYNm0147L9
         RDSYbTPMSxmqTccnSFFS6lCmAvJAUvePLz3tdUgJa0MsCJbqFV+sdlKfGFOTU6tdMuwl
         SSqACCHil2oZSEE0JP9szu96B4darLvS4lZFqIN2ZMUXCAabC6ImX+32/jBG36G9kZ0w
         +kY+nrJ2LNeBHo1Qb74s1Fo7sDZAInJE4+xqqwpCcfbnx+6J8katV0oHcaiFfAOD69Fp
         lFfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LyYy5jGcUqv4zjUDxzOxdGkKrsnFhLNgV9JpUqx6zV8=;
        b=noHBH9WJy/IMIiQvfKRi/kwhySNqWFPJL6UTl/Re9dhF+0SUDk4xtRXFbWhmTBXwQm
         zICrapsHHR1LZYb0Xc32W4/fCQxoqpV4N5L0pD/WQssGGAIj04JqU7fMdB10pQv0BsuX
         Nm7CXXNe7L3i1XEf0W0skAhNGzK4aEDyRq8Rk1nRLxBG0LqdbK7vCkWb0i5k7OwNXY/3
         K9++9i+6Zw1hTY/nUJbDxSqHjYXzJVajNdfFnP0gx/Lj9xDHQKADkyLhpkrDDUWGfkJ2
         pK/qvtJogIzsI2eLu07/5OiTkKHOmP4lb1+SvunWYOT7Uabl3QO8qW6aynxaVVqHobfN
         fCQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530i1QGUJHVRPp8qlp4U0grTEKrq02Pz9ulF5VqDSSRYx0hevS41
	MkRdz2X0jwpxOITlUYUycvM=
X-Google-Smtp-Source: ABdhPJyvaSmhxHV4itK8PlvKLX5dm8csGZkk8KGWgiADTNL5/d0Fqy3LmA0OKpEqJCYQF5QPZFaxuQ==
X-Received: by 2002:a37:a86:: with SMTP id 128mr9235007qkk.147.1610662896245;
        Thu, 14 Jan 2021 14:21:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea19:: with SMTP id f25ls3516338qkg.7.gmail; Thu, 14 Jan
 2021 14:21:35 -0800 (PST)
X-Received: by 2002:a37:2742:: with SMTP id n63mr9420134qkn.390.1610662895906;
        Thu, 14 Jan 2021 14:21:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610662895; cv=none;
        d=google.com; s=arc-20160816;
        b=sm6xlCdYQ1st8lNq4Hvz31Gm2GHvtv/c1RNN6nBghl04XxyH1PkxWwmOVl2inzwls9
         6TDeO+JBQ0dMjnxf3L7s6EkpZl8IAtzL1S++KkprEU5L8YmiALXanPXcmqQov8SOOrjK
         PnOpKJT3ourSfN258FHqm86OoKGuv3HwtZkLNPVpiWVrtO8yKMBd4yP8sW2mCwr85lf6
         ZI6JEL2uHDoPdwuDJaXUGwwezx9ht0MYcfBcq75NxOgvKPeWhW7wit5Z+7SRHMoof7VT
         Xhzdx9IvHlQYea2v9okZH2qC+leoVu9MmUzAoKMX0DhCJJPeiVQSeiCf9JImF6escw+2
         2C8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bdfuv3uxXwvDJxJbU9ckCj7K5u9W9WbAQASu0As3A2M=;
        b=S5IW9lj+88D0RthmMi4jKx1uIK7xRVLJJ4+sECaKvUEEYWDolwkZmeuMuCd3bUNwfS
         GzSItkuszA44SIbtx2sdFHJP3pP19ny5zKW65+j9JISzMtpqbju/xYaWW7HnR/gz2618
         Ad/x6a1RwfuHmviUU9PDNcHF88WICIg5sYYzw2iTnCSZk9AJOOaARIKFu6RD+l+4c2gj
         RmEAOiEpD3rRKXQhiytCvwSPA2kZZ700to+7AZiOU2az5cxbG3mTj21NsIg+X7V1Q4yJ
         7EoGh+cT3bC1nLsbN7EMGMv4Fse6+cbBrJuBDPTLvzeC/rszi7YtRzrKUoPI2xaHxGdM
         ODyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mXCeAv9Q;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id z25si585721qth.3.2021.01.14.14.21.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 14:21:35 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id r9so14415683ioo.7
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 14:21:35 -0800 (PST)
X-Received: by 2002:a5e:9b06:: with SMTP id j6mr6703570iok.171.1610662895325;
 Thu, 14 Jan 2021 14:21:35 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
 <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
 <CAKwvOd=+g88AEDO9JRrV-gwggsqx5p-Ckiqon3=XLcx8L-XaKg@mail.gmail.com>
 <CAKwvOdnSx+8snm+q=eNMT4A-VFFnwPYxM=uunRkXdzX-AG4s0A@mail.gmail.com>
 <5707cd3c-03f2-a806-c087-075d4f207bee@fb.com> <CA+icZUXuzJ4SL=AwTaVq_-tCPnSSrF+w_P8gEKYnT56Ln0Zoew@mail.gmail.com>
 <CA+icZUXQ5bNX0eX7jEhgTMawdctZ4vkmYoRKDgxEMV5ZKp8YaQ@mail.gmail.com> <CAKwvOdn98zvjGaEy0O7uCb9AUZdZANCeSYpdti3U3uj4+V4dyQ@mail.gmail.com>
In-Reply-To: <CAKwvOdn98zvjGaEy0O7uCb9AUZdZANCeSYpdti3U3uj4+V4dyQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 23:21:23 +0100
Message-ID: <CA+icZUUMPwUF7wHir1rqNTGdQEgR1Fo5j646BunhEB6D3aFXsA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Caroline Tice <cmtice@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	bpf <bpf@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: multipart/mixed; boundary="000000000000bafb9905b8e3ad30"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mXCeAv9Q;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000bafb9905b8e3ad30
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 14, 2021 at 11:05 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Jan 14, 2021 at 1:52 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > Today, I have observed and reported (see [1]) bpf/btf/pahole issues
> > with Clang v12 (from apt.llvm.org) and DWARF-4 ("four").
> > Cannot speak for other compilers and its version.
>
> If these are not specific to DWARF5, then it sounds like
> CONFIG_DEBUG_INFO_DWARF4 should also be marked as `depends on
> !DEBUG_INFO_BTF`? (or !BTF && CC=clang)
>

My experiments yesterday on Wednesday were with GCC v10.2.1 plus LLVM=1.
There were no issues with DWARF v2 and v4 but v5.

Unfortunately, build-time is long here on my systems.

For now, I did CONFIG_DEBUG_INFO_BTF=n.

I have applied attached patch.

Is it possible to re-arrange CC depends?

[ /lib/Kconfig.debug ]

config DEBUG_INFO_DWARF5
       bool "Generate DWARF Version 5 debuginfo"
-       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
-       depends on CC_IS_GCC ||
$(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC)
$(CLANG_FLAGS))
+      depends on CC_IS_GCC && GCC_VERSION >= 50000 || CC_IS_CLANG
+      depends on $(success,$(srctree)/scripts/test_dwarf5_support.sh
$(CC) $(CLANG_FLAGS))
+       depends on !DEBUG_INFO_BTF
       help
         Generate DWARF v5 debug info. Requires binutils 2.35, gcc 5.0+ (gcc
         5.0+ accepts the -gdwarf-5 flag but only had partial support for some

And adding text to help concerning DEBUG_INFO_BTF is no good these days.

BTW, if you do not mind:

Label your patches with "*k*build:" not "*K*build:".

Use "DWARF *v*ersion" not "DWARF *V*ersion" - everywhere.

One patch missed the label "kbuild:" (guess the subject has too many
characters).

From what I remember - but these are small nits.

Thanks for DWARF v5 support in Linux.

- Sedat -

> >
> > - Sedat -
> >
> > [1] https://lore.kernel.org/bpf/CA+icZUWb3OyaSQAso8LhsRifZnpxAfDtuRwgB786qEJ3GQ+kRw@mail.gmail.com/T/#m6d05cc6c634e9cee89060b2522abc78c3705ea4c
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUMPwUF7wHir1rqNTGdQEgR1Fo5j646BunhEB6D3aFXsA%40mail.gmail.com.

--000000000000bafb9905b8e3ad30
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-kbuild-dwarf-5-Do-not-depend-on-CONFIG_DEBUG_INFO_BT.patch"
Content-Disposition: attachment; 
	filename="0001-kbuild-dwarf-5-Do-not-depend-on-CONFIG_DEBUG_INFO_BT.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_kjxeqgmr0>
X-Attachment-Id: f_kjxeqgmr0

RnJvbSA3ZjcxYjQ4YThhMzAwNzdlMzg1ZjAwNjE0YWY1MTU4NzMyMDkyYjkwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAZ21haWwuY29tPgpE
YXRlOiBUaHUsIDE0IEphbiAyMDIxIDIxOjU0OjM2ICswMTAwClN1YmplY3Q6IFtQQVRDSF0ga2J1
aWxkOiBkd2FyZi01OiBEbyBub3QgZGVwZW5kIG9uIENPTkZJR19ERUJVR19JTkZPX0JURgoKLS0t
CiBsaWIvS2NvbmZpZy5kZWJ1ZyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
CgpkaWZmIC0tZ2l0IGEvbGliL0tjb25maWcuZGVidWcgYi9saWIvS2NvbmZpZy5kZWJ1ZwppbmRl
eCBlZGE3NmFmNDMyOGUuLjFkNmE1MjZiNjM0NCAxMDA2NDQKLS0tIGEvbGliL0tjb25maWcuZGVi
dWcKKysrIGIvbGliL0tjb25maWcuZGVidWcKQEAgLTI3Nyw2ICsyNzcsNyBAQCBjb25maWcgREVC
VUdfSU5GT19EV0FSRjUKIAlib29sICJHZW5lcmF0ZSBEV0FSRiBWZXJzaW9uIDUgZGVidWdpbmZv
IgogCWRlcGVuZHMgb24gR0NDX1ZFUlNJT04gPj0gNTAwMDAgfHwgQ0NfSVNfQ0xBTkcKIAlkZXBl
bmRzIG9uIENDX0lTX0dDQyB8fCAkKHN1Y2Nlc3MsJChzcmN0cmVlKS9zY3JpcHRzL3Rlc3RfZHdh
cmY1X3N1cHBvcnQuc2ggJChDQykgJChDTEFOR19GTEFHUykpCisJZGVwZW5kcyBvbiAhREVCVUdf
SU5GT19CVEYKIAloZWxwCiAJICBHZW5lcmF0ZSBEV0FSRiB2NSBkZWJ1ZyBpbmZvLiBSZXF1aXJl
cyBiaW51dGlscyAyLjM1LCBnY2MgNS4wKyAoZ2NjCiAJICA1LjArIGFjY2VwdHMgdGhlIC1nZHdh
cmYtNSBmbGFnIGJ1dCBvbmx5IGhhZCBwYXJ0aWFsIHN1cHBvcnQgZm9yIHNvbWUKLS0gCjIuMzAu
MAoK
--000000000000bafb9905b8e3ad30--

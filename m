Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLOHSP2AKGQEU4IV37Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id A168A19B60A
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 20:55:42 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id s126sf820844oih.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 11:55:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585767341; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+rl9OzjmG7k0fxdEpzW35YBPthAFUNFq6i6w3swZ9ViP+QSXlAnyCQwOOhYqmVUcH
         45dLA24klZOy03+oiQ6wTIWetBpCcpRHLUhrDQxviN96jqTlb+omry0naMWEMZAZmhTx
         FpipBTzjvouHFuKuYmLMrY037yL+MK8VQhxF8a9lh6N1pGKBc3zeipT2b0K8bVyCJDKI
         Pk9oFGJfVdCEOApFBS4MaebTxDXs1lnDnjrQnzKNoAF5eIULy+DYy1fykJy6tsEHTrAC
         2d6OOHRm/kMT7V37iRKmJPXS9AFrImDTYYt3h3RNbljw45+zjN2ZuunQaTS6dy9V0Edp
         fD6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=keeACKLZCacM87IvQ0WLyunCyWdgwI3iNiTYSZm44lA=;
        b=Xgvpax3X94S+JGUjHCWvBIBvviYw5hEDs547V95dBzszSoLUOgg3yx1OmFihbKsUA6
         wPdHX68I2WPsQIrTwgspc3djNCXeMT6eNFNacxHlKybkrcwn4875U6RSZIOWfQMpThp2
         l394TJGK/j4iL/ls4TZEu+QnqsNK2u03t+7bkXCIBxYiFJ7lULkpBb5HAdI1NmTFJE58
         tFsoDJD9zdfyDbZxMfQ5kQjBPmzIhFn97bzSNDJVBWmOiu1k7kYKeSaTMBGdAM8YjHZ2
         RjVYw90/hy0KG60HE0U8SYN7i45AW71O+GHdIknooDWlwP4mZRw/4b8S15Ax7tgJoTse
         ARsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n614lTw5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=keeACKLZCacM87IvQ0WLyunCyWdgwI3iNiTYSZm44lA=;
        b=S7QggkOkASN69bCD3nL2W5MZXr333BmmUt97ZMGKQxFYhehve/wSFv0xavTbuOFTv2
         Kjbs/17AAd3FHTypgFVr4xGR5lG23K9dw7IhFc1BRhxoDtae8wL6plFcGPbWqVOumuON
         heeXP08wwIQBXfELy11HoCB0vsa4/BL1FrbC2iCiMHvjfSwn8Vl7R9Sd0Q68E5nuRcox
         XQRA0H3hWdrQhsNaEd2xPLMs+nWrsTX5nQtCWYYx3DN0qDf3t/2cUqaccQHBXGLzzNIR
         2YPzNib7LGc90JQ8ark/ADBjwNQo6BUFr67bVOcNJdp94fIqKSmjVkXR5E97jdVS8s1A
         QoaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=keeACKLZCacM87IvQ0WLyunCyWdgwI3iNiTYSZm44lA=;
        b=aNB04lvIdMEmQzFPmW6ituxsJtUoYNdOQpXQfRrfZI9MzTyfQG9AGuBd4DghKYw2yf
         Bm9CVO/dO+3PgOc/+xPYh+2+PjOdHhRu8rEkwpOOnHWscz4KBBOwBrTWX496fXEgDEWa
         0HhNujlfTyyErkaMc2zK7XWbhZPVDeXcGFowxXur1jtZPWGAft+sNVH9h8+syV9+OZk7
         kL+Uaq4ijRzkSoF17Hx2w83GC/uv+FiSqsj8VVpgWP3c2PiXCt8hwZaMf7NvoGxLCTAK
         +lJtQoB0tgFAzFIUSssO7aKTQQJK9GXH2Fx4o0Te5FYI0S1nDEUXVpjzc+WxzG8omeB6
         iS2Q==
X-Gm-Message-State: ANhLgQ0Ht6YVlasxSb+kQEmJh98zz7dQB9Xl/0aIhkUkwYSjEAKAEq1K
	mgq3OOPdwglz21TllAR8PA0=
X-Google-Smtp-Source: ADFU+vvZ0JD7IzJigNfpWZKLqGeVifwIcwNNixTwtbHVUcVgDJvcT0RZIPCpGCZ/Cws3gXarxJvSpw==
X-Received: by 2002:a4a:1882:: with SMTP id 124mr18251779ooo.60.1585767341305;
        Wed, 01 Apr 2020 11:55:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls551630oto.3.gmail; Wed, 01 Apr
 2020 11:55:40 -0700 (PDT)
X-Received: by 2002:a9d:4ee:: with SMTP id 101mr17627140otm.301.1585767340905;
        Wed, 01 Apr 2020 11:55:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585767340; cv=none;
        d=google.com; s=arc-20160816;
        b=fVn3uwaw9A7JSVxl2Wb59YuORPEL3jLJDLiD0+/ICalR8281q42fHlwPaER5ZuugnJ
         iYWvT/+O1PGAUJVjRrkFTHQIB0ALEKThC/hc2cKzSD8QlX1lLi/6bRxT8o7Gu1RJZxwI
         478LtVvopatkjA+wGNMScwpqJoBf8WmcI8zxCtvFQkQY8ExEbHI//lrZM3CEKhI3H6su
         qPfasJ+l4jbc8uOrgdxQRVKNVYtCHbjKSS2NyL6Fy7j5hTHUrRNs5sHkZPQR17GC1lCY
         nGjWYzWKsAJoYb9b0ERQYp9/5BCmufzsnQrxnrOfMeZyNTbCB0Qhlkb/GyyUR6CSF00y
         VDew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9hemvv8ilIhbbLRd25pKUvPStc4U/3QKc5ivIJi4HRA=;
        b=Uwc9fxoTp/MYaU/ApxFCsSsGFpvm53aq2QtHGiIzAc1JbMN5nRYopGxYZHsnVKu5fD
         12twDrErLNXrhZAxp50ZwWk+s1X5JNM1bB64TzpVt7m97vn8dB8bnVCAzgTaTN43cyYR
         kMQyQQIq9q3LZLORzIRbe3GuIRkBFFhcOm6ziW6eGq9Otw0nCZrNSjY4Z3lZICXoZt9/
         DVwb66oSdYbb/vg2L0/H4/0MH40HFtuW/PiL1+oop4BBwCsOE92yytDszmZ6+jH3WynC
         NoN3LBJ6c1aH9eOlGLNa/Rq08yh142xhXJPln3ZwA96IDh10hsyCOx9Bg3QvVQ3Na4zD
         yG9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n614lTw5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t81si212829oie.5.2020.04.01.11.55.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 11:55:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id c20so442921pfi.7
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 11:55:40 -0700 (PDT)
X-Received: by 2002:a05:6a00:42:: with SMTP id i2mr24338854pfk.108.1585767339836;
 Wed, 01 Apr 2020 11:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200331104209.432176-2-maarten.lankhorst@linux.intel.com> <202004011452.AyhP9ZdC%lkp@intel.com>
In-Reply-To: <202004011452.AyhP9ZdC%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Apr 2020 11:55:28 -0700
Message-ID: <CAKwvOdniUVifJ9b1y9bhHPkdGkLasf=mkx7XwAK_ZTEk2Q+BKg@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 02/23] perf/core: Only copy-to-user after
 completely unlocking all locks.
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, intel-gfx@lists.freedesktop.org, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n614lTw5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Mar 31, 2020 at 11:50 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Maarten,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on drm-tip/drm-tip]
> [also build test WARNING on next-20200331]
> [cannot apply to drm-intel/for-linux-next tip/perf/core v5.6]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Maarten-Lankhorst/Revert-drm-i915-gem-Drop-relocation-slowpath/20200401-005710
> base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> config: x86_64-randconfig-d003-20200331 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 5227fa0c72ce55927cf4849160acb00442489937)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> kernel/events/core.o: warning: objtool: perf_read()+0x306: stack state mismatch: reg1[3]=-2-56 reg2[3]=-1+0

Apologies Maarten, this objtool warning looks like maybe a compiler
bug for us to fix.

Philip, I tried to reproduce by cloning
git://anongit.freedesktop.org/drm/drm-tip, but I don't understand the
URL in the report.  Were Maarten's patches on top of drm-tip?  Is
there a tree you found them from (rather than me fetching the 0day
branch on github)? (Or maybe this is what a report looks like for a
series posted to the list?)  Apologies for the naivete, but I plan to
triage as many of these reports on the Clang side as I can in my free
time, so I want to make sure I understand precisely what failure is
occurring where and how.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdniUVifJ9b1y9bhHPkdGkLasf%3Dmkx7XwAK_ZTEk2Q%2BBKg%40mail.gmail.com.

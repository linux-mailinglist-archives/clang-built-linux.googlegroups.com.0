Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGF7RP3AKGQE5MB3R6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id F34981D8811
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 21:18:49 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id k23sf4094471otl.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 12:18:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589829529; cv=pass;
        d=google.com; s=arc-20160816;
        b=O/TCnA0mriguSkRUvuQOWL/ZQycA9FITRg+5a3vG4SKlVVQowc1ZbsSw74BpCTP6gM
         zcoyNoncH09ZlYKJ2qHqgeORNIh/4bEXceCasHRtHOcLx0k1qLtejLJ98w2vCnlKt+Aw
         FmIw/SQIZpZC9W/mHXMoUo2QxGuozLPgjU3soWPdyFZ2W/yJQl6BKOJ2rr5UDj5KNtmv
         +712dGKtsamp/2VCMtusXUZEWDWh/O72F2CVtVphl8QihWF2UpnkCxkOV0XdP4apJViF
         CD14ivtNf9pzSvApOKr1+P2VsNXO0+M0J3jHoCWwaKY8ZFhyvzNg47JQJsxX+Pl0T1Lm
         pYwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=dFttGncJg4whjjc5TZ+CqrVCNLoLllOZ2rv7GRcD0Zw=;
        b=F5B5Gb8KYv0QHKX5zXKhzCkqc3x/UnH+vrZWVlFbm9Ic//+XEP4kaT6ZvLswOqrErX
         rpdi5WXrx3VqHDB+wn2M2YB8cZpckNdzDz6Cfe24+ZqPC+1Q+tMSyQzXLBTdQaqU8Oqk
         fyF55z8KE5kecXmcTjpwEwX9T8ZQNqnnyVsbbhTNRtiyau6MIfjlTaofTOe2VglPj+mK
         gRw1JYSVEPDEsZAe+OaM0x9VmsD7f9cpLh99+EC/XW3uMg+U00TNRz7B6wY22lv8E5Fn
         6pYrh5JOD93Bi2qHhNMFp/cHvtrUZvxi52SuFOD3DOd0J7bYRDiG7a/0+eWqcVBFd6XJ
         s7Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fDdlt75u;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dFttGncJg4whjjc5TZ+CqrVCNLoLllOZ2rv7GRcD0Zw=;
        b=r/lUooFJE4GqWDq0AN/OTJG0rdUYJh3e9Rs93OKOmfC5Fqgw2qpsU4kDwJgF2dSXbm
         B52ny3RCPccXIpyA5TyIcQPo5wqCHvyBGYUPw6mjIESiZW9yRM3vgutaI9Q1jIOExPO2
         KpAch4WxLW4/5RRM4pYDpPpZioejUIRAVbg1FSSR26nZCTG5t9KSK+rnzAsfnramYf4I
         AzKIYuENMKptbeUbDZDXE8azlIouU/4CzB+LnR9EVSg3E4CJsDPnem/8imFgZqOm5rQI
         4DaH08ZWCCFE5VB1DixrNc2+eWhGwuh26aAFqVOQ1hmFW9N6E/HgZH0QP1dEtxTjuuDq
         7dHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dFttGncJg4whjjc5TZ+CqrVCNLoLllOZ2rv7GRcD0Zw=;
        b=Xl5oH4m+b9L1HdCvkujiBbzOelOjkVPpnrC3F7zD2UACVr71M4Kd9rNxNbf8Dez+Om
         QXG5GWkpg6lfmWORtI084nbbrAuGD/2an7lZUZYc3Ftr1aJYFtNNTBDPOljr4Su6h0dl
         1I3H6zcZQTW0S9GN3+ttzKtAYVxIabIl8au4Dq6+pHtTSwl3tmwHubXFlFQGLms2g7t5
         dNOhkZkrP8fme7sIn5tZqGntXpRa9tIYSt4czPEgSkEPR9TlFaGu/KMctagVsDBWNu0D
         o9p8DBkC5i0SchtgCnAFbkLJifYy7phhnkCfSh7u3MK2KMW06YvIiWs5wpjKsftE1hyG
         FreA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dFttGncJg4whjjc5TZ+CqrVCNLoLllOZ2rv7GRcD0Zw=;
        b=PGpD8Faqzn84CLgXxkUT9BltIm+Lyhabl88ZHvnJw4GXsbYYcfXUQ+UawSuERJDASC
         oIzEPxkJ2JTsBTYzYRrM9x6gutSQS0czetDsD2jVc2Ay1MoHJWx5/XGdDX6w7oYCqv6g
         hkdLCrf47uWMLr1rC7W5Tj00OKzwEEWboWRgcqTW1NrMn7hDPmFEA4OwtidenvP3kIuy
         xv+xX+5ZXX4x+UcLVtHfPiKsBN1nPQSkLsBZp01JDjHSCL8KDL/9tmqMokpjU8ya/tam
         1BxBTNAs/Rgc6BfEiAxivKM/tcsYX/DaKj3LX/bNpd4YsY2VNSrflZiJIRcxxfMH3QA/
         ffPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531e3kPAf8bviyKWMmoO2QtO+pfAjH7LIO2kY4ADNBsjJr3URpUN
	lPgWWiUzzZddi2Grx6tmF1g=
X-Google-Smtp-Source: ABdhPJwiY+ompURqHmVec3zYwCLDcRfTDn6vd2V13D3rdctPtT2UQ50BNhVUUmzmQPa9rJOQTHxXrw==
X-Received: by 2002:aca:3106:: with SMTP id x6mr636513oix.94.1589829528870;
        Mon, 18 May 2020 12:18:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:502:: with SMTP id 2ls2089337oif.11.gmail; Mon, 18 May
 2020 12:18:48 -0700 (PDT)
X-Received: by 2002:aca:280a:: with SMTP id 10mr636616oix.83.1589829528485;
        Mon, 18 May 2020 12:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589829528; cv=none;
        d=google.com; s=arc-20160816;
        b=MtxQdb7j/1Rub0TDTQfhJJBUj0XrlBhqxV5DjNpA7iUOCgFTOdJHgm+OE4eEHWvTGW
         e/iMeeqXJ4iPQXfa3v+I+XkdqIDMCC8WL4dYzNyyiQw2xB8GvxVFwWEogZ+JFlXreJnt
         QWiv3cuy6sNzB7bGrBeYTi3f9lLakcQbAv1g0pv9YpTt+O7NvW8j8RssWfJMcF8A+2zO
         APItKX8qgtXavsn9NWa38BV4UlEYv0DsyS/vs4qUevXOqiwvPRw32ifgzRxaUl72m2op
         2mwkmrB0/gNr+FaWZyaqkVLUCniJCW+glTqw2xczSoO7KiRe9F5ytXf5P065iuK3vFRJ
         40aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=x0wZ1nEiWFSX4U68E3TeZcasfhxqGRPZvnNMw0VhBlw=;
        b=b3DxyJy9+6Xe7fHkMYLAfh6fafW4rhLOVqbdwnZev7x5f1Ysm2UTlg7wby3AK3aAyb
         Rk98n6BEQQu/DTqPEBWDQlY9joPA0YXd/jFeUkTTvK4lArrbl/0kc4IFInXEstd7JU8x
         DIjVkxlHO0bBRuh88byvejO96RGMSHwxPakAaGcyG7999gvlX7h2c6QAyQiMwKBaLNVi
         iSxw2O1HKlv1lmGaHfgMlpC/29/3U5Tc3wM5jGBqNG1wnvaZEazcNKwrTjfOx2u79iYR
         wOB1l8brqbK19QL7eghCaKap4W7w9R1NsxmxsuU9UDnAA5D+uRhAAXkiAEBslxIMRSgi
         t7TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fDdlt75u;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com. [2607:f8b0:4864:20::c41])
        by gmr-mx.google.com with ESMTPS id w196si1166595oif.4.2020.05.18.12.18.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 12:18:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c41 as permitted sender) client-ip=2607:f8b0:4864:20::c41;
Received: by mail-oo1-xc41.google.com with SMTP id z26so2305026oog.8
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 12:18:48 -0700 (PDT)
X-Received: by 2002:a4a:3005:: with SMTP id q5mr14257953oof.53.1589829527998;
        Mon, 18 May 2020 12:18:47 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n11sm3272483oij.21.2020.05.18.12.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2020 12:18:46 -0700 (PDT)
Date: Mon, 18 May 2020 12:18:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>,
	Sean Christopherson <sean.j.christopherson@intel.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kvm <kvm@vger.kernel.org>, Robert Hu <robert.hu@intel.com>,
	Farrah Chen <farrah.chen@intel.com>,
	Danmei Wei <danmei.wei@intel.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: Re: [kvm:queue 71/177] arch/x86/kvm/vmx/nested.c:5246:3: error:
 variable 'roots_to_free' is used uninitialized whenever 'if' condition is
 false
Message-ID: <20200518191845.GA87585@ubuntu-s3-xlarge-x86>
References: <202005162313.CDreQC6s%lkp@intel.com>
 <CAKwvOdmqf-0Y2GrY=SzGQr1UC3n=b_SphdB9efkqic=5ZaR9vA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmqf-0Y2GrY=SzGQr1UC3n=b_SphdB9efkqic=5ZaR9vA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fDdlt75u;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::c41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, May 18, 2020 at 12:16:00PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Sat, May 16, 2020 at 8:39 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/virt/kvm/kvm.git queue
> > head:   cb953129bfe5c0f2da835a0469930873fb7e71df
> > commit: ce8fe7b77bd8ee405295e349c82d0ef8c9788200 [71/177] KVM: nVMX: Free only the affected contexts when emulating INVEPT
> > config: x86_64-randconfig-a012-20200515 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 13d44b2a0c7ef404b13b16644765977cd5310fe2)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout ce8fe7b77bd8ee405295e349c82d0ef8c9788200
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > Note: the kvm/queue HEAD cb953129bfe5c0f2da835a0469930873fb7e71df builds fine.
> >       It only hurts bisectibility.
> >
> > All errors (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> arch/x86/kvm/vmx/nested.c:5246:3: error: variable 'roots_to_free' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> > BUG_ON(1);
> > ^~~~~~~~~
> > include/asm-generic/bug.h:62:32: note: expanded from macro 'BUG_ON'
> > #define BUG_ON(condition) do { if (unlikely(condition)) BUG(); } while (0)
> > ^~~~~~~~~~~~~~~~~~~~~~~~
> > include/linux/compiler.h:56:28: note: expanded from macro 'if'
> > #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/linux/compiler.h:58:30: note: expanded from macro '__trace_if_var'
> > #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > arch/x86/kvm/vmx/nested.c:5250:6: note: uninitialized use occurs here
> > if (roots_to_free)
> > ^~~~~~~~~~~~~
> > include/linux/compiler.h:56:47: note: expanded from macro 'if'
> > #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
> > ^~~~
> > include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
> > #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
> > ^~~~
> > arch/x86/kvm/vmx/nested.c:5246:3: note: remove the 'if' if its condition is always true
> > BUG_ON(1);
> > ^
> > include/asm-generic/bug.h:62:32: note: expanded from macro 'BUG_ON'
> > #define BUG_ON(condition) do { if (unlikely(condition)) BUG(); } while (0)
> > ^
> > include/linux/compiler.h:56:23: note: expanded from macro 'if'
> > #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
> > ^
> > arch/x86/kvm/vmx/nested.c:5179:35: note: initialize the variable 'roots_to_free' to silence this warning
> > unsigned long type, roots_to_free;
> > ^
> > = 0
> > 1 error generated.
> >
> > vim +5246 arch/x86/kvm/vmx/nested.c
> >
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5173
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5174  /* Emulate the INVEPT instruction */
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5175  static int handle_invept(struct kvm_vcpu *vcpu)
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5176  {
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5177     struct vcpu_vmx *vmx = to_vmx(vcpu);
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5178     u32 vmx_instruction_info, types;
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5179     unsigned long type, roots_to_free;
> 
> ^ definition of roots_to_free
> 
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5180     struct kvm_mmu *mmu;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5181     gva_t gva;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5182     struct x86_exception e;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5183     struct {
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5184             u64 eptp, gpa;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5185     } operand;
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5186     int i;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5187
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5188     if (!(vmx->nested.msrs.secondary_ctls_high &
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5189           SECONDARY_EXEC_ENABLE_EPT) ||
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5190         !(vmx->nested.msrs.ept_caps & VMX_EPT_INVEPT_BIT)) {
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5191             kvm_queue_exception(vcpu, UD_VECTOR);
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5192             return 1;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5193     }
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5194
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5195     if (!nested_vmx_check_permission(vcpu))
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5196             return 1;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5197
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5198     vmx_instruction_info = vmcs_read32(VMX_INSTRUCTION_INFO);
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5199     type = kvm_register_readl(vcpu, (vmx_instruction_info >> 28) & 0xf);
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5200
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5201     types = (vmx->nested.msrs.ept_caps >> VMX_EPT_EXTENT_SHIFT) & 6;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5202
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5203     if (type >= 32 || !(types & (1 << type)))
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5204             return nested_vmx_failValid(vcpu,
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5205                             VMXERR_INVALID_OPERAND_TO_INVEPT_INVVPID);
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5206
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5207     /* According to the Intel VMX instruction reference, the memory
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5208      * operand is read even if it isn't needed (e.g., for type==global)
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5209      */
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5210     if (get_vmx_mem_address(vcpu, vmcs_readl(EXIT_QUALIFICATION),
> > fdb28619a8f033 Eugene Korenevsky   2019-06-06  5211                     vmx_instruction_info, false, sizeof(operand), &gva))
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5212             return 1;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5213     if (kvm_read_guest_virt(vcpu, gva, &operand, sizeof(operand), &e)) {
> > ee1fa209f5e5ca Junaid Shahid       2020-03-20  5214             kvm_inject_emulated_page_fault(vcpu, &e);
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5215             return 1;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5216     }
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5217
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5218     /*
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5219      * Nested EPT roots are always held through guest_mmu,
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5220      * not root_mmu.
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5221      */
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5222     mmu = &vcpu->arch.guest_mmu;
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5223
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5224     switch (type) {
> > b119019847fbca Jim Mattson         2019-06-13  5225     case VMX_EPT_EXTENT_CONTEXT:
> > eed0030e4caa94 Sean Christopherson 2020-03-20  5226             if (!nested_vmx_check_eptp(vcpu, operand.eptp))
> > eed0030e4caa94 Sean Christopherson 2020-03-20  5227                     return nested_vmx_failValid(vcpu,
> > eed0030e4caa94 Sean Christopherson 2020-03-20  5228                             VMXERR_INVALID_OPERAND_TO_INVEPT_INVVPID);
> > f8aa7e3958bc43 Sean Christopherson 2020-03-20  5229
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5230             roots_to_free = 0;
> 
> ^ assignment
> 
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5231             if (nested_ept_root_matches(mmu->root_hpa, mmu->root_cr3,
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5232                                         operand.eptp))
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5233                     roots_to_free |= KVM_MMU_ROOT_CURRENT;
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5234
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5235             for (i = 0; i < KVM_MMU_NUM_PREV_ROOTS; i++) {
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5236                     if (nested_ept_root_matches(mmu->prev_roots[i].hpa,
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5237                                                 mmu->prev_roots[i].cr3,
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5238                                                 operand.eptp))
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5239                             roots_to_free |= KVM_MMU_ROOT_PREVIOUS(i);
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5240             }
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5241             break;
> > eed0030e4caa94 Sean Christopherson 2020-03-20  5242     case VMX_EPT_EXTENT_GLOBAL:
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5243             roots_to_free = KVM_MMU_ROOTS_ALL;
> 
> ^ assignment
> 
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5244             break;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5245     default:
> > 55d2375e58a61b Sean Christopherson 2018-12-03 @5246             BUG_ON(1);
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5247             break;
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5248     }
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5249
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5250     if (roots_to_free)
> 
> ^ use
> 
> While the BUG_ON in the default case should prevent the problematic
> use, Clang can't understand the semantics of BUG_ON.  roots_to_free
> should just be initialized to zero.

Looks like this was already handled:

https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=f9336e3281880b683137bc18f91848ac34af84c3

> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5251             kvm_mmu_free_roots(vcpu, mmu, roots_to_free);
> > ce8fe7b77bd8ee Sean Christopherson 2020-03-20  5252
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5253     return nested_vmx_succeed(vcpu);
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5254  }
> > 55d2375e58a61b Sean Christopherson 2018-12-03  5255
> >
> > :::::: The code at line 5246 was first introduced by commit
> > :::::: 55d2375e58a61be072431dd3d3c8a320f4a4a01b KVM: nVMX: Move nested code to dedicated files
> >
> > :::::: TO: Sean Christopherson <sean.j.christopherson@intel.com>
> > :::::: CC: Paolo Bonzini <pbonzini@redhat.com>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005162313.CDreQC6s%25lkp%40intel.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518191845.GA87585%40ubuntu-s3-xlarge-x86.

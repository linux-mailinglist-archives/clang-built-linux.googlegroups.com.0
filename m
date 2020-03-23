Return-Path: <clang-built-linux+bncBCFYN6ELYIORBU7B4HZQKGQECJR7ZWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5BE18F0B4
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 09:18:28 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id a136sf11894022qkc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 01:18:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584951507; cv=pass;
        d=google.com; s=arc-20160816;
        b=RH6YlqTDfe6M8JMYfS9wNkZyIcbyfzClGbaEVXkIpvOL387dNAo+VqUFfF9MXANZeQ
         zXjwcDHnIKqq894go3fohTokNcU9kR5UQoN9nG7z8RnzwUOd2Qp7RA5/GdqtZULxwA2Q
         z2JRcPUYF37i0A02o2/Af1qEUNunoZkmWE+FORQ61Q9IKqDZXylAtweCRwFKzLZ4Gnti
         ouBmTjsKm09lBrrYPPqytCoBUAJEN5S4oLf4Az3Ro8kGZwiWWO4iJn+YEE0cKQ5/ZFQ5
         zFSM4P43QuFJm9DY3Nl2brRheRAAj7TxK8PsgkfPDaI+njveZE7YkNDRxyHi+mVgdYNE
         hSdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=/dYrcz00xgHZkburq+Q44kcKYxUvRJYuGKhLc+P5cRQ=;
        b=KeF3brbQeuf1sGZOh+kkdLh8Mhz0wyxXScn0h09TZuV0R2Hw64iNEuijfVf+Oxi+A0
         Ew3zgJ1zo8RVcjwD7T5ugKCmfJjpYTtO5oW5Sbma7FQFXRTjgRn0sFJGUMRgMRk52v6+
         aCmZWC/rxZTorXP1USOBnG94FWoX8xYECnN9CU4xQwZGn0WAkEgqK8nhVhr9LXnWKPmB
         iAP4l2bjrRhVPhVw4PU2ITel8ZrHrgExBebtr508FRGoiaGbounuawCgJ4umFJcSpHz+
         A3L5rNyi7FRZLYD9BjsRehcNf+b8+smJw6piOmWqHMRD40qagNDz3smwdapZvBzMOVoS
         BHzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CpopIRpW;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/dYrcz00xgHZkburq+Q44kcKYxUvRJYuGKhLc+P5cRQ=;
        b=DMOfHwv6gyqQvO+uFn8OWoglNK7K463O2JcwQUDDNTQHKlSxCjksWpSAXPIvrwyZOs
         OC8hHx4IQJr+q8xg8T24dIqP5AnlU1t3dzSfur+EOvA4dZXoh20bbsvBOKy++vOShA53
         mLDwsMBqwDqGpx4VpAYEB0VIOULhQZPR5NqUT2lVC901x5KZtWuOJDFFcrOyOksBRJyG
         WthPxoJapUST0BG0TVKqnSyEZyJC1WomWnJ4ppyreWMpqoCg9rfD2Qy38KpwbsuVPpK6
         jM1cAqCNSyQfvtGtrqk1L5KCSDCyTw7inkyETVI7ukAsAAFLfbv6EjnlUqy7PyGGIU3d
         fZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/dYrcz00xgHZkburq+Q44kcKYxUvRJYuGKhLc+P5cRQ=;
        b=ZKkWx/t4CuLLKwBrKWK6mruwmg//LMIE5CNb0iSEFWws93moAlyigUhktSskz3ic2Z
         LInamR1WlC3onbrxJHBUngJPl/UnCUk00B7QlF/jf5xV77MZdct85N1UZrxqkphauykF
         gkh+0mnoM4ubqgw7NW3FHl2e1xgUzckFoNhItedwDybomjjgX0Jvr6P5Z0xyno7+M1yF
         1VndRRgwWc75AubhzNr4oKjBbd0v2d1jaxVxSnsllhF4AVR84U9pnl/WC+ukzW7ivwqQ
         JviE26KFmFr1zHLm6UQn6/rf44kHl77wQyGWFwaMfbyMocS8FHF/RLwQGm3wkqUE+Q8A
         5rjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0muUOPUbzZIFfomUnsFWzA9g2ii5WpBwGuXtbg8avtkE9uEoj9
	3xegkiR6n6ySkgmn61N5S2I=
X-Google-Smtp-Source: ADFU+vvzNASA30uxKj/rnb6vea5VXHPM8PPjq744O1IZrckwzQ/gRGI5ehqGC27UF0pbqFg4zRLxQQ==
X-Received: by 2002:a0c:ebcc:: with SMTP id k12mr19633991qvq.69.1584951507333;
        Mon, 23 Mar 2020 01:18:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls7159735qkf.1.gmail; Mon, 23
 Mar 2020 01:18:26 -0700 (PDT)
X-Received: by 2002:a37:b1c6:: with SMTP id a189mr14066065qkf.26.1584951506891;
        Mon, 23 Mar 2020 01:18:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584951506; cv=none;
        d=google.com; s=arc-20160816;
        b=YJ/Pz0kWIaByeYOU9NGdIT9bKT8KV6EPgrbORSBl8RlSgwFjgBTCinhi8bV5YhgUCW
         wJiTFDQl1+bym4EllUusCAjwbQ/QnJl3fZNoDBjMMEH0Z/1sv0Fhr0OSDENFCti4Q2bZ
         mf04ZMihKAxkYNhVFqRf3t/SNPRf0i8L8Tz6oDbBZSUxtnzDNHUDDqX85FAxldC9V7lg
         bka0I87/3mfRoX3bdoapOsCFxwk6V8B3mTt3vMVqKR1GoFx5djnaD93ayl0tkm5nmovz
         SpOd3l6BkYKKkh7S5TQDClWiAQ5yqwoipb1LxfAGWxJSmAeCrmEzarVuDQtJFU+oYLbs
         4AZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=9+djlOZkkG34kATfFU8ToSkWmnwBYyFJfZBQaAAXqqE=;
        b=D28eJ3/yuedGdjieEszQeiAD8q1++U9u34VJjQ+7r4Q9VX7WMM6P2MLEO6xwqxfOpA
         2+9Lbrg67YLIZqNwC0hgNmMfnfRPIq7Z7n9zhHczP7bc9j9iuVAa5hLO9/1eum5a4PI2
         wFeh5nzjARdcJ3v4ICmY/t8Gxa8XvhJZvFY7MwolFpi13gM+ZlXKxpn905xeSB4BLmYB
         OEJZHKZI5e/63XCVCyQIvyqOcwxfKeRg+20DRr1TzTZS2m/WGA45uZ/QLEljI0RcTDV/
         79PA8G4Vq84FGX7eAbHdy7ckhsvCAGeZ50+Tl+nFfoNnaAoRU+QzWraMZMgnpTcz28Cz
         c1ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CpopIRpW;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id 198si689329qkh.7.2020.03.23.01.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 01:18:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-328-umc2GSDYPQ-WYyzGgYQ2tw-1; Mon, 23 Mar 2020 04:18:19 -0400
X-MC-Unique: umc2GSDYPQ-WYyzGgYQ2tw-1
Received: by mail-wr1-f70.google.com with SMTP id e10so5221588wru.6
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 01:18:19 -0700 (PDT)
X-Received: by 2002:adf:fa8a:: with SMTP id h10mr6852177wrr.160.1584951497495;
        Mon, 23 Mar 2020 01:18:17 -0700 (PDT)
X-Received: by 2002:adf:fa8a:: with SMTP id h10mr6852142wrr.160.1584951497210;
        Mon, 23 Mar 2020 01:18:17 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:24d8:ed40:c82a:8a01? ([2001:b07:6468:f312:24d8:ed40:c82a:8a01])
        by smtp.gmail.com with ESMTPSA id t126sm21823703wmb.27.2020.03.23.01.18.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 01:18:16 -0700 (PDT)
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in
 handle_external_interrupt_irqoff
To: Dmitry Vyukov <dvyukov@google.com>,
 syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
 KVM list <kvm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>,
 "Christopherson, Sean J" <sean.j.christopherson@intel.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Thomas Gleixner <tglx@linutronix.de>, Vitaly Kuznetsov
 <vkuznets@redhat.com>, wanpengli@tencent.com,
 the arch/x86 maintainers <x86@kernel.org>
References: <000000000000277a0405a16bd5c9@google.com>
 <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com>
Date: Mon, 23 Mar 2020 09:18:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CpopIRpW;
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 63.128.21.74 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
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

On 22/03/20 07:59, Dmitry Vyukov wrote:
> 
> The commit range is presumably
> fb279f4e238617417b132a550f24c1e86d922558..63849c8f410717eb2e6662f3953ff674727303e7
> But I don't see anything that says "it's me". The only commit that
> does non-trivial changes to x86/vmx seems to be "KVM: VMX: check
> descriptor table exits on instruction emulation":

That seems unlikely, it's a completely different file and it would only
affect the outside (non-nested) environment rather than your own kernel.

The only instance of "0x86" in the registers is in the flags:

> RSP: 0018:ffffc90001ac7998 EFLAGS: 00010086
> RAX: ffffc90001ac79c8 RBX: fffffe0000000000 RCX: 0000000000040000
> RDX: ffffc9000e20f000 RSI: 000000000000b452 RDI: 000000000000b453
> RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
> R10: ffff8880a4e94200 R11: 0000000000000002 R12: dffffc0000000000
> R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
> FS:  00007fb50e370700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 000000000000005c CR3: 0000000092fc7000 CR4: 00000000001426f0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400

That would suggest a miscompilation of the inline assembly, which does
push the flags:

#ifdef CONFIG_X86_64
                "mov %%" _ASM_SP ", %[sp]\n\t"
                "and $0xfffffffffffffff0, %%" _ASM_SP "\n\t"
                "push $%c[ss]\n\t"
                "push %[sp]\n\t"
#endif
                "pushf\n\t"
                __ASM_SIZE(push) " $%c[cs]\n\t"
                CALL_NOSPEC


It would not explain why it suddenly started to break, unless the clang
version also changed, but it would be easy to ascertain and fix (in
either KVM or clang).  Dmitry, can you send me the vmx.o and
kvm-intel.ko files?

Thanks,

Paolo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5058aabe-f32d-b8ef-57ed-f9c0206304c5%40redhat.com.

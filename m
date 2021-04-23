Return-Path: <clang-built-linux+bncBDRZHGH43YJRB3VCRSCAMGQEQ7V3GNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5870F36998A
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 20:26:56 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id n22-20020a4ad4160000b02901e94af54f75sf12339115oos.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 11:26:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619202415; cv=pass;
        d=google.com; s=arc-20160816;
        b=CPyP02X+kmBRTP98PwcNnZ30SYB8m4ejoRh5LXqFfTC136oZxowZrdhaGnsDbYUdRK
         /yk+0Zg229OsDIxczv5/cYdmCACbIVAMhRf9XlmVSqbUqVgZQxDkKE8GwjtLjgkCauA6
         PrrXHjwy9lz38j78vCQ9LPpSoESVDyF0Qrkvyx1/zi1sB/wE6twG8t4gyAvloC0v76H7
         TLaqowRtJgSTWVCdTVzZMSQphjc+zMLpXqqak3SE5PP7t/ePIBU8sD5BPW7IRCiriRJE
         mfHHk537WWtt0ZVFvPFXNOXkyxyRkEoEFR/0w+/WfLVlyC+Tan0k0vUim2+O4sM+5kk6
         CBSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=A/ebWcAjt2623uSIKj3ulaBFT5+s6cboRjED9qU8MDw=;
        b=PYEAJoYAbemtBgfK654XjDFWcmMKIXyD/c3U42PiR8l7RNqruA5ytSVR8KxQN07Jbr
         /XLMK20LiZanYTc6s0YGpy2zFwd9rmzxe+h8Ekumg5FfvryXsIyw7hpLiNZ7D2onhfnO
         JE26Ln8Qe4dIZ1z0yiQ/54u3rynAm8LtSyXjk6jD54xNwxcsTVGhF6in9gVahomLihg4
         lW8CHaW9Zx6XuiE7+vI9wOCB/RzksBbr3nCSozUttk18RLFIhuhpcKmtctDdUXko8ein
         aR7hGMjJLaigfrXU5uyz2BRvdz2P73UcCO15UddOZ48FtfIkwqg/qraEmhrF4AVV5Njz
         AEMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RKHxCjbw;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/ebWcAjt2623uSIKj3ulaBFT5+s6cboRjED9qU8MDw=;
        b=kEHBxMpTZtmpRBUUw+3Y6KOBFfViuf5WUk0XeJ4hzmrw8zKDZVsbvywDAspIl+VK51
         QPCGd5NqX//cAMsDrRv4VGBZzyGlZijjobVQDkOeBpdKm1rgBufwlgWMb4ll8bX5SIX7
         Ha3sveFRiDemwHyVSX+5iuXOF1i58kn1pk39gvgBFBuikz/f1pDHWilRHbALqERpqx4M
         MaolbBCEbWpWbuAqWsWp6QzIA+19Sjly9BnHNZNFnCilAwe4ez7LYSdZfXxhMV5SX5xC
         dBSjZ+FUDALtiYVtAvSiFPfrVk8WTZfYCvbqypMWDfeFqJ2t9himdFmMC8hXYbCVK/n+
         olVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/ebWcAjt2623uSIKj3ulaBFT5+s6cboRjED9qU8MDw=;
        b=r6D9LWpIfMmJsRp0voIXgQE/NukpCDoyp9aHiaDwIjgGbEPYpb4GKbqsgebTuT2oEb
         LOSFPGG5VP0OeZ1HAea/SHqZm1wnlVuBwXC5TI9mWvueWyp+za0gZb9Wu0Ny6ZfcfWmS
         p3eqc7unWO3uG4ymLtqt0EaiprdprhQWjzzkaCq1mReskbGMKdAM6dkm1joXp5w3VPWV
         PKJ+rsmQICs19aRh6FRQe/+BbrUspyB+WR5IsSAeOO2h13BjofqE26YdfNvmerWprssq
         IoxEobRep1tjUGAdiHTCWODO7DSpot+78nNSF+E21yh8nOj0wqQnInyjPMhxtJIIloK0
         Uzeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/ebWcAjt2623uSIKj3ulaBFT5+s6cboRjED9qU8MDw=;
        b=mGeq5jVV/tf8ukIV6sAm1kWILcW/xBEX9NvQQ5C+TQfosLLuaQxgAWSyok64b94saW
         5FB+U4hAyqt6cUoEbnuJfAI117tfxtW7Xxy8XlbnO+GHoAmWzh3aY5GTGpGqvfhgu7lX
         KWdEN+2frImC7/AaZpH54FZSs/wpfC5tZqFXZCUdBYyV7bkkKXOI4Y+cEMD4OT9in/yK
         ahJWwOTk3V0WSyEKy0yML6z2URgAgGhh4o/AupnVj0NiRItWre7DpnPccPkFIImfMK5n
         WFxHa2BfRpW2F3Y3tIXEuduZ1knDqqSIV9C7KhReO16Tfe+JBJzD/xkKNTsdArFi+Ntz
         Wsrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QkvkLRE33cMC0bpFhK4kqKVFthz1bIu3bjsmV9izp9PpAQbqI
	4JUE6ejpLETYhdEkyh1p59o=
X-Google-Smtp-Source: ABdhPJxfZfP+u3EdTx3YwDJgArCqqfymFRgeYMRrcneG1EY5ipXvpBHAExBCdchNe1DMXsBh26u8Gg==
X-Received: by 2002:a9d:5c11:: with SMTP id o17mr4478309otk.178.1619202415054;
        Fri, 23 Apr 2021 11:26:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls2786593oiw.10.gmail; Fri,
 23 Apr 2021 11:26:54 -0700 (PDT)
X-Received: by 2002:aca:ad03:: with SMTP id w3mr4953886oie.46.1619202414693;
        Fri, 23 Apr 2021 11:26:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619202414; cv=none;
        d=google.com; s=arc-20160816;
        b=CD/LGc/cTpCGXIb3syb11sb1EMsmMKO2jYAHS7OHR4LJPnk8p4b0SVLYJLPtO679yA
         p+QnXuk+HXUnXroG6khzLdS/qXkG3xKygK1pPAWI6Og2ckxyziy5OakwX6zIBLuUtD57
         YPDVXBo12/HtbHskCCUn9DX9jCY+Vrbx+IEzF6zwpjyaP+/A/rZak2GTodorWDhJlkM2
         Iw8vqRjithlmrLqc6VHx2krVo9RA6p2zcmtQXnVAbBjazBe75CAXPd3DPM7kmu2mL/c0
         r+neyBcWwmpI2pE4nMahUXlC19MVFCrE79sw6kFsh9T+l8RODPgWQRcDXaX1083wqhLB
         rEWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=usW4K6lNB80DxgPMKXGwbs60wwBIL6B9yLZGCMNyXto=;
        b=IdB5JM4N+LMK2Ky773hCtmiKfjST6iuaswaw2885bDf+mT9ZvipJxU9oIEEPMNID4O
         dc0nu2Q3w4KpY4suybsRV9i9N09NwgBbms9lMUwiG14zQOPACPbDLLxBNAPagzvu1Fen
         CrML1Z7gfwMdkM9pGzsLF4mKqIRauWziwIwrPpY68hzxzGPBiwxwfthwiLrg4p2Kco1u
         BYT/cXD8+XZWSSR2ikKumurYfNycPFcuOJgM0JT9aV+rRU0pvQyVsmb2kb+kW2HZFz+Q
         yQTatAET9ElLXXzhuE5LoG0InW461acFijQCS038OrI7O8b0b4BRY9PicamsjStia0Eo
         7WQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RKHxCjbw;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id n25si909055otf.1.2021.04.23.11.26.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 11:26:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id c195so56668662ybf.9
        for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 11:26:54 -0700 (PDT)
X-Received: by 2002:a25:818f:: with SMTP id p15mr6881986ybk.135.1619202414411;
 Fri, 23 Apr 2021 11:26:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <fa0bed95-5ddf-ecad-0613-2f13837578c3@infradead.org> <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com>
In-Reply-To: <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 23 Apr 2021 20:26:43 +0200
Message-ID: <CANiq72kNVDAiT+=SDuFNkC90=cJFqOYfHy60oiqsht6mcEDeYA@mail.gmail.com>
Subject: Re: ARCH=hexagon unsupported?
To: Arnd Bergmann <arnd@kernel.org>
Cc: Randy Dunlap <rdunlap@infradead.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Brian Cain <bcain@codeaurora.org>, 
	linux-arch <linux-arch@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RKHxCjbw;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Apr 23, 2021 at 8:18 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> Correct, as I understand it , work on gcc was stopped after the 4.6 release and
> any testing internally to Qualcomm was done using a patched clang. A few years
> ago this was said to be (almost?) entirely upstream, but as Nick points out
> it has never been possible to build an upstream hexagon kernel with an upstream
> clang.

It is pretty much dead code then. It would be a good idea to be a bit
more strict on this, i.e. not let archs linger in mainline if not
properly maintained. I would go even as far as requiring some public
CI logs for all architectures building -next/-rc as proof that some
configuration actually builds with some compiler, even if the compiler
is not an upstream one.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kNVDAiT%2B%3DSDuFNkC90%3DcJFqOYfHy60oiqsht6mcEDeYA%40mail.gmail.com.
